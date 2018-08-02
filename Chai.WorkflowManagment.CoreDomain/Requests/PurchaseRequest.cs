using Chai.WorkflowManagment.CoreDomain.Approval;
using Chai.WorkflowManagment.CoreDomain.Setting;
using Chai.WorkflowManagment.CoreDomain.Users;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Chai.WorkflowManagment.CoreDomain.Requests
{
    public partial class PurchaseRequest : IEntity
    {

        public PurchaseRequest()
        {
            this.PurchaseRequestStatuses = new List<PurchaseRequestStatus>();
            this.PurchaseRequestDetails = new List<PurchaseRequestDetail>();
            //this.PurchaseOrders = new List<PurchaseOrder>();
            //  this.BidAnalysises = new BidAnalysis();
        }
        public int Id { get; set; }
        public string RequestNo { get; set; }
        public int Requester { get; set; }
        public DateTime RequestedDate { get; set; }
        public DateTime Requireddateofdelivery { get; set; }
        public string DeliverTo { get; set; }
        public string Neededfor { get; set; }
        public string SpecialNeed { get; set; }
        public bool Budgeted { get; set; }
        public string SuggestedSupplier { get; set; }
        public decimal TotalPrice { get; set; }
        // public Program Program { get; set; }
        public string Comment { get; set; }
        public string ConditionsofOrder { get; set; }
        public int CurrentApprover { get; set; }
        public int CurrentLevel { get; set; }
        public string CurrentStatus { get; set; }
        public string ProgressStatus { get; set; }
        public virtual BidAnalysisRequest BidAnalysisRequest { get; set; }
        public virtual SoleVendorRequest SoleVendorRequest { get; set; }
        public virtual IList<PurchaseRequestStatus> PurchaseRequestStatuses { get; set; }
        public virtual IList<PurchaseRequestDetail> PurchaseRequestDetails { get; set; }
        // public virtual PurchaseOrder PurchaseOrders { get; set; }
        #region PurchaseRequestStatus
        public virtual PurchaseRequestStatus GetPurchaseRequestStatus(int Id)
        {

            foreach (PurchaseRequestStatus PRS in PurchaseRequestStatuses)
            {
                if (PRS.Id == Id)
                    return PRS;

            }
            return null;
        }
        public virtual PurchaseRequestStatus GetPurchaseRequestStatusworkflowLevel(int workflowLevel)
        {

            foreach (PurchaseRequestStatus PRS in PurchaseRequestStatuses)
            {
                if (PRS.WorkflowLevel == workflowLevel)
                    return PRS;

            }
            return null;
        }
        public virtual IList<PurchaseRequestStatus> GetPurchaseRequestStatusByRequestId(int RequestId)
        {
            IList<PurchaseRequestStatus> LRS = new List<PurchaseRequestStatus>();
            foreach (PurchaseRequestStatus AR in PurchaseRequestStatuses)
            {
                if (AR.PurchaseRequest.Id == RequestId)
                    LRS.Add(AR);

            }
            return LRS;
        }
        public virtual void RemovePurchaseRequestStatus(int Id)
        {

            foreach (PurchaseRequestStatus PRS in PurchaseRequestStatuses)
            {
                if (PRS.Id == Id)
                    PurchaseRequestStatuses.Remove(PRS);
                break;
            }

        }

        #endregion
        #region PurchaseRequestDetail
        public virtual PurchaseRequestDetail GetPurchaseRequestDetail(int Id)
        {

            foreach (PurchaseRequestDetail PRS in PurchaseRequestDetails)
            {
                if (PRS.Id == Id)
                    return PRS;

            }
            return null;
        }
        public virtual IList<PurchaseRequestDetail> GetPurchaseRequestDetailByPurchaseId(int PurchaseId)
        {
            IList<PurchaseRequestDetail> LRS = new List<PurchaseRequestDetail>();
            foreach (PurchaseRequestDetail AR in PurchaseRequestDetails)
            {
                if (AR.PurchaseRequest.Id == PurchaseId)
                    LRS.Add(AR);

            }
            return LRS;
        }
        public virtual void RemovePurchaseRequestDetail(int Id)
        {

            foreach (PurchaseRequestDetail PRS in PurchaseRequestDetails)
            {
                if (PRS.Id == Id)
                    PurchaseRequestDetails.Remove(PRS);
                break;
            }

        }
        #endregion


    }
}
