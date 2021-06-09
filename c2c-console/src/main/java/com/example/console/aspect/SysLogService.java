package com.example.console.aspect;

import com.example.console.service.PageRequest;
import com.example.console.service.PageResult;

import java.util.List;

public interface SysLogService {
    int save(SysLog record);

    int saveLog(String userName, String operation, String params);

    int delete(SysLog record);

    int delete(List<SysLog> records);

    SysLog findById(Long id);

    PageResult findPage(PageRequest pageRequest);


}
