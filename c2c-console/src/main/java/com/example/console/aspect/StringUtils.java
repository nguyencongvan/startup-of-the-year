package com.example.console.aspect;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;

public class StringUtils {

	public static boolean isBlank(String value) {
		return value == null || "".equals(value) || "null".equals(value) || "undefined".equals(value);
	}

	public static String random() {
//		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		String NumericString = "0123456789";
		int n = 4;
		StringBuilder sb = new StringBuilder(n);
		for (int i = 0; i < n; i++) {
			int index = (int)(NumericString.length() * Math.random());
			sb.append(NumericString.charAt(index));
		}
		return sb.toString();
	}

	public static String random(int length) {
//		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		String NumericString = "0123456789";
		int n = length;
		StringBuilder sb = new StringBuilder(n);
		for (int i = 0; i < n; i++) {
			int index = (int)(NumericString.length() * Math.random());
			sb.append(NumericString.charAt(index));
		}
		return sb.toString();
	}

	public static String getTinyUrl(String url) {
		CloseableHttpClient client = HttpClients.createDefault();
		try{
			URIBuilder builder = new URIBuilder();
			builder.setScheme("http").setHost("api.tinyurl.com")
					.setPath("/create")
					.setParameter("url", url);
			URI uri = builder.build();
			HttpGet request = new HttpGet(uri);
			request.setHeader("Content-Type","application/json");
			request.setHeader("Authorization","Bearer su4mliaTQvOR137IclOVRZhZ03dcHl97DXIxYSORieVqGDeeBhY8wMBQeuL2");
			request.setHeader("accept","application/json");
			HttpResponse response = client.execute(request);

			BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent(), "UTF-8"));

			String line = "";
			String json = "";
			while ((line = rd.readLine()) != null) {
				json += line;
			}
			rd.close();
			response.getEntity().getContent().close();
			client.close();

			if(!StringUtils.isBlank(json)){
				JSONObject object = new JSONObject(json);
				if(object.get("code").toString().equals("0")){
					JSONObject object1 = object.getJSONObject("data");
					return object1.get("tiny_url").toString();
				}
			}
		}
		catch (Exception ex){
			ex.printStackTrace();
			if(client != null) {
				try {
					client.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return "";
	}

}
