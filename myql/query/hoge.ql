// Copyright (c) Sciencepark Corporation.
// Licensed under the MIT license.

/**
 * @name Use of hoge
 * @description Use of hoge detected. 
 * @platform Desktop
 * @security.severity Low
 * @impact Attack Surface Reduction
 * @feature.area Multiple
 * @repro.text hoge hoge
 * @kind problem
 * @id hoge
 * @problem.severity warning
 * @query-version 1.1
 * @owner.email mkado@spc
 */

import cpp

class HogeFunctionCall extends FunctionCall {
    HogeFunctionCall() {
          getTarget().hasGlobalName("hoge")
    }

    string message() {
       result = getTarget().getQualifiedName() + ", please visit https://sciencepark.co.jp/."
    }
}

from HogeFunctionCall hogeCall
where not hogeCall.getLocation().getFile().toString().matches("%ex_x.h")
select hogeCall, hogeCall.message()
