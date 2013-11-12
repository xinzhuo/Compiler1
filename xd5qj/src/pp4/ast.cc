/* File: ast.cc
 * ------------
 */

#include "ast.h"
#include "ast_type.h"
#include "ast_decl.h"
//#include "errors.h"
//#include "scope.h"

#include <string.h> // strdup
#include <stdio.h>  // printf

bool Identifier::operator==(const Identifier &rhs) {
    if (strcmp(name, rhs.name) == 0) {
        return true;
    }
    else {
        return false;
    }
}

Node::Node(yyltype loc) {
    location = new yyltype(loc);
    parent = NULL;
    //nodeScope = NULL;
}

Node::Node() {
    location = NULL;
    parent = NULL;
    //nodeScope = NULL;
}
	 
Identifier::Identifier(yyltype loc, const char *n) : Node(loc) {
    name = strdup(n);
    //cached = NULL;
}
