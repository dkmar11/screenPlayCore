# Serenity BDD Screenplay Project

## Overview

This project demonstrates the use of Serenity BDD with the Screenplay pattern for automated testing of REST APIs. The project is configured to use Serenity BDD with Cucumber and Screenplay for structuring and executing tests.

## Features

- **Screenplay Pattern**: Implements the Screenplay pattern for better readability and maintainability of test code.
- **Serenity BDD**: Utilizes Serenity BDD for comprehensive test reporting and management.
- **Cucumber**: Uses Cucumber for writing behavior-driven tests.
- **REST Assured**: Integrated with REST Assured for API testing.
- **Schema Validation**: Includes functionality to validate JSON responses against predefined schemas.

## Project Structure

- `src/test/resources/features`: Contains Cucumber feature files written in Gherkin.
- `src/test/java/petstore/api/steps`: Contains step definitions for the Cucumber scenarios.
- `src/test/java/petstore/api/interactions`: Contains interactions to perform actions in the API.
- `src/test/java/petstore/api/questions`: Contains questions to verify the state of the API responses.
- `src/test/java/petstore/api/runners`: Contains test runners to execute the Cucumber tests.

## Setup

### Prerequisites

- **Java 11**: Ensure Java 11 is installed on your machine.
- **Gradle**: Gradle is used for building and running tests.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/your-repository.git
   cd your-repository
   ```

### Running Tests
To run tests with a specific environment, use the -Denvironment parameter:
   ```bash
    ./gradlew clean test -Denvironment=testing
   ```
# screenPlayCore
# screenPlayCore
