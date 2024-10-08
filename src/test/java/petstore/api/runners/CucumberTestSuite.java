package petstore.api.runners;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        plugin = {"pretty", "json:target/cucumber-report.json"},
        features = "src/test/resources/features",
        glue = "petstore.api"
)
public class CucumberTestSuite {
}