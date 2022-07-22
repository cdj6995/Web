package kr.ac.kopo.framework;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import kr.ac.kopo.framework.annotation.RequestMapping;

public class HandlerMapping {
	
	private Map<String, CtrlAndMethod> mappings;
	
	public HandlerMapping(String ctrlNames) throws Exception {
		
		mappings = new HashMap<>();
		
		String[] ctrls = ctrlNames.split("\\|");
		for(String ctrl : ctrls) {
			Class<?> clz = Class.forName(ctrl);
			Constructor<?> constructor = clz.getConstructor();
			Object target = constructor.newInstance();
			
			Method[] methods = clz.getMethods();
			for(Method method : methods) {
				
				RequestMapping reqAnno = method.getAnnotation(RequestMapping.class);
				if(reqAnno != null) {
					String uri = reqAnno.value();
					
					mappings.put(uri, new CtrlAndMethod(target, method));
				}
			}
		}
	}
	
	public CtrlAndMethod getCtrlAndMethod(String uri) {
		return mappings.get(uri);
	}

}
