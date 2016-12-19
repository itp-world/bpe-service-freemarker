package bpe.service.freemarker;

import ratpack.server.RatpackServer;
import java.net.URL;
import java.util.Map;
import com.fasterxml.jackson.annotation.JsonProperty;

import static ratpack.jackson.Jackson.fromJson;

public class Main {

 public static class TemplateData {
   private final Map<String, Object> data;
   public TemplateData(@JsonProperty("data") Map<String, Object> data) {
     this.data = data;
   }
   public Map<String, Object> getData() {
     return data;
   }
 }

  public static void main(String... args) throws Exception {
    RatpackServer.start(server -> server.handlers(chain -> chain

      .post("test", ctx -> {
        ctx.parse(fromJson(TemplateData.class)).then(data -> {
          FreemarkerRenderer renderer = new FreemarkerRenderer("templates");
          FreemarkerModel model = new FreemarkerModel("test.ftl", data.getData());
          renderer.render(ctx, model);
        });
      })

    ));
  }

}
