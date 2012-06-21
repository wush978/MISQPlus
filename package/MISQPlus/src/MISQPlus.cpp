/*
 * MISQPlus.cpp
 *
 *  Created on: Jun 21, 2012
 *      Author: wush
 */

#include <R.h>
#include <Rcpp.h>

RcppExport SEXP NumericFilter(SEXP x, SEXP phi);

using namespace Rcpp;

SEXP NumericFilter(SEXP Rx, SEXP Rphi) {
	BEGIN_RCPP
	NumericVector x(Rx), phi(Rphi);
	if (x.size() < phi.size()) {
		throw std::invalid_argument("The length of x is shorter than the length of filter!");
	}
	NumericVector retval(x.size() - phi.size() + 1, 0.0);

	return retval;
	END_RCPP
}


