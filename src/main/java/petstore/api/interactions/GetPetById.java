package petstore.api.interactions;

import net.serenitybdd.annotations.Title;
import net.serenitybdd.rest.SerenityRest;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.rest.interactions.Get;
import petstore.api.constants.Endpoints;

import static net.serenitybdd.screenplay.Tasks.instrumented;

public class GetPetById implements Interaction {
    private String petId;
    GetPetById(String petId){
        this.petId = petId;
    }
    public static GetPetById withId(String id) {
        return instrumented(GetPetById.class, id);
    }
    @Override
    @Title("fetching getPetById endpoint")
    public <T extends Actor> void performAs(T actor) {
        SerenityRest.reset();
        String url = Endpoints.getPetById(this.petId);
        actor.attemptsTo(
                Get.resource(url)
        );
    }
}
