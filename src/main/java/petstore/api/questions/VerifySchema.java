package petstore.api.questions;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Question;
import static io.restassured.module.jsv.JsonSchemaValidator.matchesJsonSchemaInClasspath;
import static net.serenitybdd.screenplay.rest.questions.ResponseConsequence.seeThatResponse;
import org.hamcrest.MatcherAssert;
import org.hamcrest.Matchers;

public class VerifySchema implements Question<Boolean> {
    private final String schema;

    public VerifySchema(String schema){
        this.schema = schema;
    }

    @Override
    public Boolean answeredBy(Actor actor) {
        // Validate schema using seeThatResponse
        actor.should(
                seeThatResponse("Validate JSON schema",
                        response -> response.assertThat()
                                .body(matchesJsonSchemaInClasspath("schemas/" + schema + ".json")))
        );

        // Return true if the validation passed
        return true;
    }

    public static VerifySchema with(String schema) {
        return new VerifySchema(schema);
    }
}
