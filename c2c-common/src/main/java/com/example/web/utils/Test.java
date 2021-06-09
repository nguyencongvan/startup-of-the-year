//package com.example.web.utils;
//
//import com.google.firebase.messaging.*;
//import com.example.web.persistence.SysSyncTransMapper;
//import org.apache.http.HttpResponse;
//import org.apache.http.client.methods.HttpGet;
//import org.apache.http.client.utils.URIBuilder;
//import org.apache.http.impl.client.CloseableHttpClient;
//import org.apache.http.impl.client.HttpClients;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.net.URI;
//import java.text.ParseException;
//
//public class Test {
//
//
//    public static void main(String[] args) throws ParseException {
//
//        System.out.println(String.format("%.2f", 1.333333));
//    }
//
//    @Autowired
//    private SysSyncTransMapper sysSyncTransMapper;
//
//    private static void abcd(){
//        CloseableHttpClient client = HttpClients.createDefault();
//        try{
//            ///===============================
//            URIBuilder builder = new URIBuilder();
//            builder.setScheme("http").setHost("api.tinyurl.com")
//                    .setPath("/create")
//                    .setParameter("url", "https://www.myetherwallet.com/");
//            URI uri = builder.build();
//            HttpGet request = new HttpGet(uri);
//            request.setHeader("Content-Type","application/json");
//            request.setHeader("Authorization","Bearer su4mliaTQvOR137IclOVRZhZ03dcHl97DXIxYSORieVqGDeeBhY8wMBQeuL2");
//            request.setHeader("accept","application/json");
//            HttpResponse response = client.execute(request);
//            // Get the responseVAS
//            BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent(), "UTF-8"));
//
//            String line = "";
//            while ((line = rd.readLine()) != null) {
//                line += line;
//            }
//
//            rd.close();
//            response.getEntity().getContent().close();
//            client.close();
//        }
//        catch (Exception ex){
//            ex.printStackTrace();
//            if(client != null) {
//                try {
//                    client.close();
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//    }
//
//}
