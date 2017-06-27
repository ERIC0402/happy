package party.wzlovewmx.prop;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

public class CustomizedPlaceHolder extends PropertyPlaceholderConfigurer {

	private static final Map<String, String> ctxPropertiesMap = new HashMap<String, String>();

	protected void processProperties(ConfigurableListableBeanFactory beanFactory, Properties props) throws BeansException {
		super.processProperties(beanFactory, props);
		for (Object key : props.keySet()) {
			String keyStr = key.toString();
			String value = props.getProperty(keyStr);
			ctxPropertiesMap.put(keyStr, value);
		}
	}

	public static Map<String, String> getPropertiesMap() {
		return Collections.unmodifiableMap(ctxPropertiesMap);
	}

	public static String getProperty(String key) {
		return ctxPropertiesMap.get(key);
	}
}
