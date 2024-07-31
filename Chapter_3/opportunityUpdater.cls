public class OpportunityUpdater {
    public class OpportunityUpdateInput {
        @InvocableVariable(label='Opportunity Id' required=true)
        public Id opportunityId;
    }

    @InvocableMethod(label='Update Opportunity Fields' description='Updates opportunity fields based on custom logic')
    public static void updateOpportunityFields(List<OpportunityUpdateInput> inputList) {
        // Implement your custom logic here (if needed)
        // You can access the opportunityId from each input and perform the necessary updates

        List<Opportunity> opportunitiesToUpdate = new List<Opportunity>();

        // Retrieve opportunities with the 'Negotiation/Review' stage
        List<Opportunity> negotiationReviewOpportunities = [SELECT Id, StageName, CloseDate FROM Opportunity WHERE StageName = 'Negotiation/Review'];

        for (Opportunity oppToUpdate : negotiationReviewOpportunities) {
            // Set Close Date to three days from today
            oppToUpdate.CloseDate = Date.today().addDays(3);
            opportunitiesToUpdate.add(oppToUpdate);
        }

        // Update the opportunities
        if (!opportunitiesToUpdate.isEmpty()) {
            update opportunitiesToUpdate;
        }
    }
}
