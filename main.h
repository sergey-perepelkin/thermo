/*
 * main.h
 *
 *  Created on: 26 июля 2016 г.
 *      Author: sergey.perepelkin
 */

#ifndef MAIN_H_
#define MAIN_H_


struct UserData {
  char name[32];
  char company[32];
};

bool sendRequest(const char* http_site, const char* http_resource);
void readReponseContent(char* content, size_t maxSize);
bool skipResponseHeaders();
bool parseUserData(char* content, struct UserData* userData);
void printUserData(const struct UserData* userData);


#endif /* MAIN_H_ */
