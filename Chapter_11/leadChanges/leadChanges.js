import { LightningElement, track, api, wire } from 'lwc';
import getLeadDetails from '@salesforce/apex/LeadController.getLeadDetails';
import getRelatedChanges from '@salesforce/apex/LeadController.getRelatedChanges';
import getLeadPicklistValues from '@salesforce/apex/LeadController.getLeadPicklistValues';

export default class LeadChanges extends LightningElement {
    @api leadId;
    @track leadRecord = { Name: '', Status: '', Id: '' };
    @track relatedChanges = [];
    @track leadOptions = [];

    connectedCallback() {
        this.fetchLeadPicklistValues();
    }

    async fetchLeadPicklistValues() {
        try {
            const result = await getLeadPicklistValues();
            if (result) {
                this.leadOptions = result.map(option => ({ label: option, value: option }));
            }
        } catch (error) {
            console.error('Error fetching lead picklist values:', error);
        }
    }

    handleLeadChange(event) {
        this.leadRecord.Name = event.detail.value;
        this.fetchLeadDetails();
    }

    async fetchLeadDetails() {
        try {
            const result = await getLeadDetails({ leadName: this.leadRecord.Name });
            if (result) {
                // Ensure we are setting the Status field
                this.leadRecord = { ...this.leadRecord, ...result };
                this.fetchRelatedChanges();
            } else {
                this.leadRecord.Status = 'Lead not found';
                this.relatedChanges = [];
            }
        } catch (error) {
            console.error('Error fetching Lead details:', error);
        }
    }

    async fetchRelatedChanges() {
        try {
            const result = await getRelatedChanges({ leadId: this.leadRecord.Id });
            if (result) {
                this.relatedChanges = result;
            } else {
                this.relatedChanges = [];
            }
        } catch (error) {
            console.error('Error fetching related changes:', error);
        }
    }
}

