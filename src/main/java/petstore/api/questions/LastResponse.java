package petstore.api.questions;

import net.serenitybdd.rest.SerenityRest;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Question;
import io.restassured.response.Response;

public class LastResponse implements Question<Boolean> {

    private final String jsonPath;
    private final String expectedValue;

    private LastResponse(String jsonPath, String expectedValue) {
        this.jsonPath = jsonPath;
        this.expectedValue = expectedValue;
    }

    public static LastResponse has(String jsonPath, String expectedValue) {
        return new LastResponse(jsonPath, expectedValue);
    }

    @Override
    public Boolean answeredBy(Actor actor) {
        Response response = SerenityRest.lastResponse();
        String actualValue = response.jsonPath().getString(jsonPath);
        return actualValue.equals(expectedValue);
    }
}