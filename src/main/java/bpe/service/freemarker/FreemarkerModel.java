package bpe.service.freemarker;

import java.util.HashMap;
import java.util.Map;

public class FreemarkerModel extends HashMap<String, Object> {
  private final String template;

  public FreemarkerModel(String template) {
    this.template = template;
  }

  public FreemarkerModel(String template, Map<String, Object> map) {
    this(template);
    putAll(map);
  }

  public String getTemplate() {
    return template;
  }
}
