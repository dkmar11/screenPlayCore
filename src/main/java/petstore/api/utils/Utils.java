package petstore.api.utils;
import com.google.gson.Gson;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Base64;
import java.util.Map;

public class Utils {
    public static <T> String obtenerJson(T objeto) {
        final Gson gson = new Gson();
        return gson.toJson(objeto);
    }

    public static Map convertirJsonMap(String objeto) {
        final Gson gson = new Gson();
        return gson.fromJson(objeto, Map.class);
    }

    public static String obtenerValueFromResponse(Response response, String value){
        JsonPath js = response.jsonPath();
        return js.getString(value);
    }

    public static String convertirImagenBase64(String Path){
        File imageFile = new File(Path);
        byte[] imageBytes = new byte[0];
        try {
            imageBytes = Files.readAllBytes(imageFile.toPath());
        } catch (IOException e) {
            e.printStackTrace();
        }

        String base64Image = Base64.getEncoder().encodeToString(imageBytes);

        return base64Image;
    }
}