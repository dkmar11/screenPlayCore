package petstore.api.stepdefinitions.hook;

import io.cucumber.java.Before;
import net.serenitybdd.screenplay.actors.OnStage;
import net.serenitybdd.screenplay.actors.OnlineCast;
import net.serenitybdd.screenplay.rest.abilities.CallAnApi;
import net.thucydides.model.util.EnvironmentVariables;
import static net.serenitybdd.screenplay.actors.OnStage.theActorCalled;
import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;
public class hook {

    private EnvironmentVariables environmentVariables;

    @Before("@api")
    public void configuracionBaseUrl() {
        OnStage.setTheStage(new OnlineCast());
        theActorCalled("api user");
        String environment = environmentVariables.getProperty("environment");
        String theRestApiBaseUrl = environmentVariables.getProperty("environments."+environment+".apiUrl");
        theActorInTheSpotlight().whoCan(CallAnApi.at(theRestApiBaseUrl));
    }
}
