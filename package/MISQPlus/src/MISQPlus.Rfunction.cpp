/*
 * MISQPlus.cpp
 *
 *  Created on: Jun 21, 2012
 *      Author: wush
 */

#include "MISQPlus.h"

using namespace Rcpp;

SEXP MISQPlusNumericFilter(SEXP Rx, SEXP Rphi) {
	BEGIN_RCPP
	NumericVector x(Rx), phi(Rphi);
	if (x.size() < phi.size()) {
		throw std::invalid_argument("The length of x is shorter than the length of filter!");
	}
	NumericVector retval(x.size() - phi.size() + 1, 0.0);
	MISQPlus::filter<NumericVector::iterator>(x.begin(), phi, retval.size(), retval.begin());
	return retval;
	END_RCPP
}

SEXP MISQPlusNumericMatrixFilter(SEXP Rx, SEXP Rphi) {
	BEGIN_RCPP
	NumericVector phi(Rphi);
	NumericMatrix x(Rx);
	if (x.nrow() < phi.size()) {
		throw std::invalid_argument("The row of x is shorter than the length of filter!");
	}
	NumericMatrix retval(x.nrow() - phi.size() + 1, x.ncol());
	for(R_len_t x_col(0); x_col < x.ncol(); x_col++) {
		MISQPlus::filter<NumericMatrix::Column::iterator>(x.column(x_col).begin(), phi, retval.nrow(), retval.column(x_col).begin());
	}
	return retval;
	END_RCPP
}

SEXP MISQPlusDiffMatrix(SEXP Rx) {
	BEGIN_RCPP
	NumericMatrix x(Rx);
	if (x.ncol() < 1) {
		throw std::invalid_argument("Invalid matrix");
	}
	NumericMatrix retval(x.nrow(), x.ncol() * (x.ncol() - 1) / 2);
	R_len_t retval_index(0);
	for (R_len_t i(1);i < x.ncol();i++) {
		for (R_len_t j(0); j < i; j++) {
			for(R_len_t k(0);k < x.nrow();k++) {
				retval(k, retval_index) = x(k, i) - x(k, j);
			}
			retval_index++;
		}
	}
	return retval;
	END_RCPP
}

SEXP MISQPlusMatrixFun1(SEXP Rx) {
	BEGIN_RCPP
	NumericMatrix x(Rx);
	if (x.ncol() != x.nrow())
		throw std::invalid_argument("Input is not a squared matrix");
	NumericVector retval(1,0.0);
	return retval;
	END_RCPP
}

