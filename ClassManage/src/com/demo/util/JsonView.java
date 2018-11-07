package com.demo.util;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.web.servlet.View;

public class JsonView implements View {
	private Map<String, Object> map = new HashMap<String, Object>();

	@Override
	public String getContentType() {
		return "text/plain;charset=UTF-8";
	}

	public void setProperty(String key, Object value) {
		map.put(key, value);
	}

	@Override
	public void render(Map<String, ?> map, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType(getContentType());
		PrintWriter out = response.getWriter();
		try {
			out.write(this.getJSONString());
		} finally {
			out.close();
			out = null;
		}
	}

	private String getJSONString() {
		JSONObject jsonObject = getJsonFromMap(map);
		return jsonObject.toString();
	}

	private JSONObject getJsonFromMap(Map<String, Object> map) {
		if (!map.isEmpty()) {
			JSONObject jsonObject = new JSONObject();
			Iterator<String> it = map.keySet().iterator();
			while (it.hasNext()) {
				Object key = it.next();
				jsonObject.put(key, map.get(key));
			}
			return jsonObject;
		} else {
			return null;
		}
	}
}
