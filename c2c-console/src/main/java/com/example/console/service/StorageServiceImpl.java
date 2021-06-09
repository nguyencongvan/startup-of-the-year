package com.example.console.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@Service
@Transactional
public class StorageServiceImpl implements StorageService {

    private static final Logger logger = LoggerFactory.getLogger(StorageServiceImpl.class);

    @Autowired
    SysConfigService sysConfigService;

//    @Autowired
//    GeneralMapper generalMapper;

    @Override
    @PostConstruct
    public void init() {
        try {
            SysConfig sysConfig = sysConfigService.findByKey("image_upload_location");
            String uploadLocation = sysConfig == null ? "" : sysConfig.getValue();
            Files.createDirectories(Paths.get(uploadLocation));
        } catch (IOException e) {
            logger.error("Could not initialize storage location" + e);
        }
    }

    @Override
    public String store(MultipartFile file, String filename, String location) throws Exception {
        if (file.isEmpty()) {
            throw new IOException("Failed to store empty file " + filename);
        }
        if (filename.contains("..")) {
            // This is a security check
            throw new IOException("Cannot store file with relative path outside current directory " + filename);
        }
        SysConfig sysConfig = sysConfigService.findByKey(location);
        String uploadLocation = sysConfig == null ? "" : sysConfig.getValue();

        try (InputStream inputStream = file.getInputStream()) {
            Files.copy(inputStream, Paths.get(uploadLocation).resolve(filename),
                    StandardCopyOption.REPLACE_EXISTING);
        }
        return filename;
    }


    @Override
    public String store2(MultipartFile file, String filename) throws Exception {
        if (file.isEmpty()) {
            throw new IOException("Failed to store empty file " + filename);
        }
        if (filename.contains("..")) {
            // This is a security check
            throw new IOException(
                    "Cannot store file with relative path outside current directory "
                            + filename);
        }
        SysConfig sysConfig = sysConfigService.findByKey("image_upload_location");
        String uploadLocation = sysConfig == null ? "" : sysConfig.getValue();

        try (InputStream inputStream = file.getInputStream()) {
            Files.copy(inputStream, Paths.get(uploadLocation).resolve(filename),
                    StandardCopyOption.REPLACE_EXISTING);
        }



        return filename;
    }

    @Override
    public Path load(String filename) {
        String localtion = "image_upload_location";
        SysConfig sysConfig = sysConfigService.findByKey(localtion);
        String uploadLocation = sysConfig == null ? "" : sysConfig.getValue();
        Path rootLocation = Paths.get(uploadLocation);
        return rootLocation.resolve(filename);
    }

    @Override
    public Path load(String filename, String localtion) {
        SysConfig sysConfig = sysConfigService.findByKey(localtion);
        String uploadLocation = sysConfig == null ? "" : sysConfig.getValue();
        System.out.println("\n chinh118: " + uploadLocation);
        Path rootLocation = Paths.get(uploadLocation);
        return rootLocation.resolve(filename);
    }

    @Override
    public void deleteFile(String fileName, String localtion) {
        SysConfig sysConfig = sysConfigService.findByKey(localtion);
        String uploadLocation = sysConfig == null ? "" : sysConfig.getValue();
        Path rootLocation = Paths.get(uploadLocation+ File.separator+fileName);
        FileSystemUtils.deleteRecursively(rootLocation.toFile());
    }

    @Override
    public void deleteFile2(String fileName) {
        SysConfig sysConfig = sysConfigService.findByKey("image_upload_location");
        String uploadLocation = sysConfig == null ? "" : sysConfig.getValue();
        Path rootLocation = Paths.get(uploadLocation+ File.separator+fileName);
        FileSystemUtils.deleteRecursively(rootLocation.toFile());
    }

    @Override
    public Resource loadAsResource(String filename) {
        try {
            Path file = load(filename);
            Resource resource = new UrlResource(file.toUri());
            if (resource.exists() || resource.isReadable()) {
                return resource;
            } else {
                throw new FileNotFoundException(
                        "Could not read file: " + filename);
            }
        } catch (Exception e) {
            logger.error("Could not read file: " + filename, e);
            return null;
        }
    }

    @Override
    public Path loadExcelTemplate(String filename) {
        String localtion = "file_excel_template";
        SysConfig sysConfig = sysConfigService.findByKey(localtion);
        String uploadLocation = sysConfig == null ? "" : sysConfig.getValue();
        Path rootLocation = Paths.get(uploadLocation);
        return rootLocation.resolve(filename);
    }

}
