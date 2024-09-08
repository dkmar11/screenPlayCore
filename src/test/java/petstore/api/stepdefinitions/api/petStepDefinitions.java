package petstore.api.stepdefinitions.api;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.screenplay.actors.OnStage;
import petstore.api.interactions.GetPetById;
import petstore.api.questions.LastResponse;
import petstore.api.questions.VerifySchema;

import static net.serenitybdd.screenplay.GivenWhenThen.seeThat;

public class petStepDefinitions {
    @When("the user wants to get a id with id {string}")
    public void theUserWantsToGetAIdWithId(String petId) {
        OnStage.theActorInTheSpotlight().attemptsTo(
                GetPetById.withId(petId)
        );
    }

    @Then("the user should see the following response")
    public void theUserShouldSeeTheFollowingResponse(DataTable dataTable) {
        dataTable.asMaps(String.class, String.class).forEach(row -> {
            String jsonPath = row.get("key");
            String expectedValue = row.get("value");
            OnStage.theActorInTheSpotlight().should(
                    seeThat("Response value at " + jsonPath +" should be " +expectedValue, LastResponse.has(jsonPath, expectedValue))
            );
        });

    }

    @Then("the response should match the schema {string}")
    public void theResponseShouldMatchTheSchema(String fileName) {
        OnStage.theActorInTheSpotlight().should(
                seeThat("Response schema validation", VerifySchema.with(fileName))
        );
    }
}
