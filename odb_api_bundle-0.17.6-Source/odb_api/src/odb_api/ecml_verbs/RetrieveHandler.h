/*
 * (C) Copyright 1996-2013 ECMWF.
 * 
 * This software is licensed under the terms of the Apache Licence Version 2.0
 * which can be obtained at http://www.apache.org/licenses/LICENSE-2.0. 
 * In applying this licence, ECMWF does not waive the privileges and immunities 
 * granted to it by virtue of its status as an intergovernmental organisation nor
 * does it submit to any jurisdiction.
 */
/// @author Piotr Kuchta, February 2015

#ifndef odb_api_RetrieveHandler_H
#define odb_api_RetrieveHandler_H

#include <sstream>

#include "ecml/parser/Request.h"
#include "ecml/core/RequestHandler.h"

namespace odb {

class RetrieveHandler : public ecml::RequestHandler {
public:
    RetrieveHandler(const std::string&, bool local);

    virtual ecml::Values handle(ecml::ExecutionContext&);

    static std::string odbPathNameSchema(ecml::ExecutionContext&);
    static std::string odbServerRoots(ecml::ExecutionContext&);

    static std::string valueInContextOrResource(ecml::ExecutionContext&, const std::string& keyword, bool required = true);

private:
    bool local_;
};

} // namespace odb

#endif
