#ifndef RLANG_INTERNAL_INTERNAL_H
#define RLANG_INTERNAL_INTERNAL_H

#include "quo.h"


extern sexp* as_list_call;

void rlang_init_internal();
sexp* rlang_ns_get(const char* name);


#endif
