trigger Milestone1_Expense_Trigger on Milestone1_Expense__c (before insert, before update) 
{
	if(Trigger.isBefore)
	{
		Milestone1_Expense_Trigger_Utility.handleExpenseBeforeTrigger(Trigger.new);
	}
}

/*
 * Copyright (c) 2018, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
