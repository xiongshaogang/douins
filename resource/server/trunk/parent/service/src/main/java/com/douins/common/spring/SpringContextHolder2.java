/**
 * 
 */
package com.douins.common.spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/** 
* @ClassName: SpringContexHelper 
* @Description: ApplicationContext加载
* @author G. F. 
* @date 2015年11月1日 下午3:23:50 
*  
*/
public class SpringContextHolder2 implements ApplicationContextAware, DisposableBean {
 private static ApplicationContext applicationContext = null;
 private static Logger logger = LoggerFactory.getLogger(SpringContextHolder2.class);
 
 public void setApplicationContext(ApplicationContext applicationContext) {
  logger.debug("注入ApplicationContext到SpringContextHolder:" + applicationContext);
  if (SpringContextHolder2.applicationContext != null) {
   logger.warn("SpringContextHolder中的ApplicationContext被覆盖, 原有ApplicationContext为:"
     + SpringContextHolder2.applicationContext);
  }
  SpringContextHolder2.applicationContext = applicationContext; //NOSONAR
 }
 
 @Override
 public void destroy() throws Exception {
  SpringContextHolder2.clear();
 }
 
 public static ApplicationContext getApplicationContext() {
  assertContextInjected();
  return applicationContext;
 }
 
 @SuppressWarnings("unchecked")
 public static <T> T getBean(String name) {
  assertContextInjected();
  return (T) applicationContext.getBean(name);
 }
 
 public static <T> T getBean(Class<T> requiredType) {
  assertContextInjected();
  return applicationContext.getBean(requiredType);
 }
 
 public static void clear() {
  logger.debug("清除SpringContextHolder中的ApplicationContext:" + applicationContext);
  applicationContext = null;
 }
 
 private static void assertContextInjected() {
  if (applicationContext == null) {
   throw new IllegalStateException("applicaitonContext未注入,请在applicationContext.xml中定义SpringContextHolder");
  }
 }
}