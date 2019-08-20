trigger Milestone1_Task_Trigger on Milestone1_Task__c ( before insert, before update,after insert,after update ) {

	if(trigger.isBefore) {
		Milestone1_Task_Trigger_Utility.handleTaskBeforeTrigger(trigger.new);  
	} 
	
	if(trigger.isAfter) {
		Milestone1_Task_Trigger_Utility.handleTaskAfterTrigger(trigger.new,trigger.old);
	} 

}

/*
 * Copyright (c) 2018, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
