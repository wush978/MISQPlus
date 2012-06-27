/*
 * MISQPlus.h
 *
 *  Created on: Jun 21, 2012
 *      Author: wush
 */

#ifndef MISQPLUS_H_
#define MISQPLUS_H_

#include <R.h>
#include <Rcpp.h>

namespace MISQPlus {

	template<class _Iterator>
	void filter(_Iterator x, const Rcpp::NumericVector& phi, const R_len_t retval_size, _Iterator retval) {
		for(R_len_t i(0); i < retval_size; i++) {
			*retval = 0;
			for(R_len_t j(0);j < phi.size();j++) {
				*retval += *((x + j)) * phi[j];
			}
			x++;
			retval++;
		}
		return;
	}

	const Rcpp::NumericMatrix DiffMatrix(const Rcpp::NumericMatrix& x);

}

RcppExport SEXP MISQPlusNumericFilter(SEXP x, SEXP phi);
RcppExport SEXP MISQPlusNumericMatrixFilter(SEXP x, SEXP phi);
//RcppExport SEXP MISQPlusDiffMatrix(SEXP x);
RcppExport SEXP MISQPlusDist(SEXP phi, SEXP x);

#endif /* MISQPLUS_H_ */
