//============================================================================
// Name        : blank_gurobi_cpoptimizer_project.cpp
// Author      : Pedro Henrique Del Bianco Hokama
// Version     :
// Copyright   : 
// Description : Just a base eclipse project to build a gurobi solver
//============================================================================

#include <iostream>
#include <gurobi_c++.h>
#include <ilcp/cp.h>

using namespace std;


int main() {
	cout << "This is a base to project with gurobi and cpoptimizer" << endl;
	GRBEnv* grb_env = 0;
	IloEnv ilog_env;
	try{
	  IloModel cp_model(ilog_env);
	  IloCP cp_solver(cp_model);
	  cp_solver.solve();

    grb_env = new GRBEnv();
    GRBModel grb_model = GRBModel(*grb_env);
    grb_model.optimize();
	}
	catch (GRBException e){
		cout << "Error code = " << e.getErrorCode() << endl;
		cout << e.getMessage() << endl;
	}
  catch (IloException& ex) {
    cout << "Error: " << ex << endl;
  }
	catch (...){
		cout << "Exception during optimization" << endl;
	}

	ilog_env.end();
	delete grb_env;
	return 0;
}
