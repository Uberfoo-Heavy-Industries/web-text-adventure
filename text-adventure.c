#include <stdio.h>
#include <string.h>

void handle_command(const char* command, char* response) {
    if (strcmp(command, "look") == 0) {
        strcpy(response, "You are in a small room. There is a door to the north.");
    } else if (strcmp(command, "north") == 0) {
        strcpy(response, "You have entered another room. There is a window to the east.");
    } else {
        strcpy(response, "I don't understand that command.");
    }
}

int main() {
    char command[100];
    char response[256];
    while (1) {
        printf(">");
        scanf("%s", command);
        handle_command(command, response);
        printf("%s\n", response);
    }
    return 0;
}
