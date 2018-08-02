<%@ Page Title=" Bid Analysis Request Form" Language="C#" MasterPageFile="~/Shared/ModuleMaster.master" AutoEventWireup="true" CodeFile="frmBidAnalysisRequest.aspx.cs" Inherits="Chai.WorkflowManagment.Modules.Request.Views.frmBidAnalysisRequest" %>

<%@ MasterType TypeName="Chai.WorkflowManagment.Modules.Shell.BaseMaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="DefaultContent" runat="Server">
     <script type="text/javascript" language="javascript">
         function Clickheretoprint(theid) {
             var disp_setting = "toolbar=yes,location=no,directories=yes,menubar=yes,";
             disp_setting += "scrollbars=yes,width=750, height=600, left=100, top=25";
             var content_vlue = document.getElementById(theid).innerHTML;

             var docprint = window.open("", "", disp_setting);
             docprint.document.open();
             docprint.document.write('<html><head><title>CHAI Zimbabwe</title>');
             docprint.document.write('</head><body onLoad="self.print()"><center>');
             docprint.document.write(content_vlue);
             docprint.document.write('</center></body></html>');
             docprint.document.close();
             docprint.focus();
         }
    </script>
    <asp:ValidationSummary ID="VSBid" runat="server"
        CssClass="alert alert-danger fade in" DisplayMode="SingleParagraph"
        ValidationGroup="Save" ForeColor="" />
    <asp:ValidationSummary ID="VSBidder" runat="server"
        CssClass="alert alert-danger fade in" DisplayMode="SingleParagraph"
        ValidationGroup="proadd" ForeColor="" />
    <asp:ValidationSummary ID="VSBidderEdit" runat="server"
        CssClass="alert alert-danger fade in" DisplayMode="SingleParagraph"
        ValidationGroup="proedit" ForeColor="" />

    <div id="wid-id-0" class="jarviswidget" data-widget-custombutton="false" data-widget-editbutton="false">
        <header>
            <span class="widget-icon"><i class="fa fa-edit"></i></span>
            <h2>BID ANALYSIS WORKSHEET</h2>
        </header>


        <!-- widget div-->
        <div>

            <!-- widget edit box -->
            <div class="jarviswidget-editbox">
                <!-- This area used as dropdown edit box -->

            </div>
            <!-- end widget edit box -->

            <!-- widget content -->
            <div class="widget-body no-padding">
                <div class="smart-form">
                    <fieldset>

                        <div class="row">
                           
                            <section class="col col-4">
                                <label class="label">
                                    Requester</label>
                                <label class="input">
                                    <asp:TextBox ID="txtRequester" runat="server" Visible="true"></asp:TextBox>
                                </label>
                            </section>
                             
                            <section class="col col-4">
                                <label id="lblRequestDate" runat="server" class="label" visible="true">
                                   Purchase Requested Date</label>
                                <label class="input">
                                    <i class="icon-append fa fa-calendar"></i>
                                    <asp:TextBox ID="txtRequestDate" runat="server" Visible="true" CssClass="form-control datepicker" Enabled="False"></asp:TextBox>
                                </label>
                            </section>
                           
                            <section class="col col-4">
                                <label class="label">
                                     Date</label>
                                <label class="input">
                                    <i class="icon-append fa fa-calendar"></i>
                                    <asp:TextBox ID="txtAnalyzedDate" runat="server" Visible="true" CssClass="form-control datepicker" data-dateformat="mm/dd/yy" Enabled="False"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RfvAnalyzedDate" runat="server" CssClass="validator" ControlToValidate="txtAnalyzedDate" ErrorMessage="Analyzed Date Required" InitialValue="" SetFocusOnError="True" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                                </label>
                            </section>
                        </div>
                           <div class="row">                            
                            <section class="col col-6">
                            
                             
                                <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Left" Width="430px" DataKeyNames="Id"   CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False">
                <RowStyle CssClass="rowstyle" />  
                                    <Columns>
                                        <asp:BoundField DataField="PurchaseRequest.ConditionsofOrder" HeaderText="Item Description" />
                                       
                                    </Columns>
               
                <FooterStyle CssClass="FooterStyle" />
                <HeaderStyle CssClass="headerstyle" />
                <PagerStyle CssClass="PagerStyle" />
                <RowStyle CssClass="rowstyle" />
               
                             </asp:GridView>
                              </section>
                           </div>
                          <div class="row">                            
                            <section class="col col-6">
                                <label class="label">Project</label>
                                <label class="select">
                                    <asp:DropDownList ID="ddlProject" AutoPostBack="true" runat="server" DataValueField="Id" DataTextField="ProjectCode" OnSelectedIndexChanged="ddlProject_SelectedIndexChanged">
                                    </asp:DropDownList><i></i>
                                    <asp:RequiredFieldValidator
                                        ID="rfvddlProject" runat="server" ErrorMessage="Project is required" Display="Dynamic"
                                        CssClass="validator" ValidationGroup="saveMain" InitialValue="0"
                                        SetFocusOnError="true" ControlToValidate="ddlProject"></asp:RequiredFieldValidator>
                                </label>
                            </section>
                             <section class="col col-6">
                                <label class="label">Grant</label>
                                <label class="select">
                                    <asp:DropDownList ID="ddlGrant" runat="server" DataValueField="Id" DataTextField="GrantCode">
                                    </asp:DropDownList><i></i>
                                    <asp:RequiredFieldValidator
                                        ID="rfvGrant" runat="server" ErrorMessage="Grant is required" Display="Dynamic"
                                        CssClass="validator" ValidationGroup="saveMain" InitialValue="0"
                                        SetFocusOnError="true" ControlToValidate="ddlGrant"></asp:RequiredFieldValidator>
                                </label>
                            </section>
                        </div>
                        <div class="row">
                         
                            
                             <section class="col col-4">
                                <label class="label">
                                    Special Need</label>
                                <label class="input">
                                    <asp:TextBox ID="txtSpecialNeed" runat="server" Visible="true"></asp:TextBox>
                                </label>
                            </section>
                             <section class="col col-8">
                                <label class="label">
                                    Reason for Selecting Supplier</label>
                                <label class="input">
                                    <asp:TextBox ID="txtselectionfor" runat="server" Visible="true"></asp:TextBox>
                                </label>
                            </section>
                        </div>
                       <div class="row">
                           <section class="col col-6">
                                <label class="label">Total Price </label>
                                <label class="input">
                                    <asp:TextBox ID="txtTotal" ReadOnly="true" runat="server"></asp:TextBox>
                                </label>
                            </section>                  
                           </div>
           </fieldset>
                    <div class="tab-content">
                    <div class="tab-pane active" id="hr2">

                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#iss1" data-toggle="tab">Bidder Detail</a>
                                        </li>
                                        <li class="">
                                            <a href="#iss2" data-toggle="tab">Attachments</a>
                                        </li>
                                    </ul>
                    <div class="tab-content padding-10">
                    <div class="tab-pane active" id="iss1">
                         <fieldset>
                            <div class="row">
                    <asp:DataGrid ID="dgBidders" runat="server" AlternatingRowStyle-CssClass="" AutoGenerateColumns="False" CellPadding="0"
                        CssClass="table table-striped table-bordered table-hover" PagerStyle-CssClass="paginate_button active" DataKeyField="Id"
                        ShowFooter="True" GridLines="None" Height="30px" OnSelectedIndexChanged="dgBidders_SelectedIndexChanged" OnUpdateCommand="dgBidders_UpdateCommand" OnCancelCommand="dgBidders_CancelCommand1" OnDeleteCommand="dgBidders_DeleteCommand1" OnEditCommand="dgBidders_EditCommand1" OnItemCommand="dgBidders_ItemCommand1" OnItemDataBound="dgBidders_ItemDataBound1">
                      

                        <Columns>
                            <asp:TemplateColumn HeaderText="Supplier Type">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlSupplierType" runat="server" CssClass="form-control"
                                        AppendDataBoundItems="True" DataTextField="SupplierTypeName" DataValueField="Id"
                                         AutoPostBack="True" OnSelectedIndexChanged="ddlSupplierType_SelectedIndexChanged">
                                        <asp:ListItem Value="0">Select Supplier Type</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RfvSupplierType" runat="server" CssClass="validator"
                                        ControlToValidate="ddlSupplierType" ErrorMessage="Supplier Required"
                                        InitialValue="0" SetFocusOnError="True" ValidationGroup="proedit">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="ddlFSupplierType" runat="server" CssClass="form-control"
                                        AppendDataBoundItems="True" DataTextField="SupplierTypeName" DataValueField="Id"
                                        EnableViewState="true" AutoPostBack="True" OnSelectedIndexChanged="ddlFSupplierType_SelectedIndexChanged">
                                        <asp:ListItem Value="0">Select Supplier</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RfvFSupplierType" runat="server" CssClass="validator"
                                        ControlToValidate="ddlFSupplierType" Display="Dynamic"
                                        ErrorMessage="Supplier Type Required" InitialValue="0" SetFocusOnError="True"
                                        ValidationGroup="proadd">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "SupplierType.SupplierTypeName")%>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Supplier">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlSupplier" runat="server" CssClass="form-control"
                                        AppendDataBoundItems="True" DataTextField="SupplierName" DataValueField="Id"
                                        ValidationGroup="proedit">
                                        <asp:ListItem Value="0">Select Supplier</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RfvSupplier" runat="server" CssClass="validator"
                                        ControlToValidate="ddlSupplier" ErrorMessage="Supplier Required"
                                        InitialValue="0" SetFocusOnError="True" ValidationGroup="proedit">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="ddlFSupplier" runat="server" CssClass="form-control"
                                        AppendDataBoundItems="True" DataTextField="SupplierName" DataValueField="Id"
                                        EnableViewState="true" ValidationGroup="proadd">
                                        <asp:ListItem Value="0">Select Supplier</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RfvFSupplier" runat="server" CssClass="validator"
                                        ControlToValidate="ddlFSupplier" Display="Dynamic"
                                        ErrorMessage="Supplier Required" InitialValue="0" SetFocusOnError="True"
                                        ValidationGroup="proadd">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "Supplier.SupplierName")%>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                             <asp:TemplateColumn HeaderText="Contact Details">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "ContactDetails")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtContactDetails" runat="server" CssClass="form-control" Text=' <%# DataBinder.Eval(Container.DataItem, "ContactDetails")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RfvContactDetails" runat="server" CssClass="validator" ControlToValidate="txtContactDetails" ErrorMessage="Contact Details of Supplier Required" ValidationGroup="proedit">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtFContactDetails" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RfvFContactDetails" runat="server" CssClass="validator" ControlToValidate="txtFContactDetails" ErrorMessage="Contact Details of Supplier Required" ValidationGroup="proadd">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateColumn>
                          
                            <asp:TemplateColumn HeaderText="Lead Time from Supplier">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "LeadTimefromSupplier")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtLeadTimefromSupplier" runat="server" CssClass="form-control" Text=' <%# DataBinder.Eval(Container.DataItem, "LeadTimefromSupplier")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validator" ControlToValidate="txtLeadTimefromSupplier" ErrorMessage="Lead Time from Supplier Required" ValidationGroup="proedit">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtFLeadTimefromSupplier" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validator" ControlToValidate="txtFLeadTimefromSupplier" ErrorMessage="Lead Time from Supplier Required" ValidationGroup="proadd">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateColumn>
                           
                            <asp:TemplateColumn HeaderText="Special Terms Delivery">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "SpecialTermsDelivery")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtSpecialTermsDelivery" runat="server" CssClass="form-control" Text=' <%# DataBinder.Eval(Container.DataItem, "SpecialTermsDelivery")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RfvSpecialTermsDelivery" runat="server" CssClass="validator" ControlToValidate="txtSpecialTermsDelivery" ErrorMessage="Special Terms Delivery Required" ValidationGroup="proedit">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtFSpecialTermsDeliveryy" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RfvFSpecialTermsDelivery" runat="server" CssClass="validator" ControlToValidate="txtFSpecialTermsDeliveryy" ErrorMessage="Special Terms Delivery Supplier Required" ValidationGroup="proadd">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Rank">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "Rank")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtRank" runat="server" CssClass="form-control" Text=' <%# DataBinder.Eval(Container.DataItem, "Rank")%>'></asp:TextBox>
                                   
                                    <asp:RequiredFieldValidator ID="RfvRank" runat="server" CssClass="validator" ControlToValidate="txtRank" ErrorMessage="Rank Required" ValidationGroup="proedit">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtFRank" runat="server" CssClass="form-control"></asp:TextBox>
                                  
                                    <asp:RequiredFieldValidator ID="RfvFRank" runat="server" CssClass="validator" ControlToValidate="txtFRank" ErrorMessage="Rank Required" ValidationGroup="proadd">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateColumn>
                      
                                
                                       
                                      <asp:TemplateColumn HeaderText="Actions">
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" ValidationGroup="edit" CssClass="btn btn-xs btn-default"><i class="fa fa-save"></i></asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" CssClass="btn btn-xs btn-default"><i class="fa fa-times"></i></asp:LinkButton>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:LinkButton ID="lnkAddNew" runat="server" CommandName="AddNew" ValidationGroup="save" CssClass="btn btn-sm btn-success"><i class="fa fa-save"></i></asp:LinkButton>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit" CssClass="btn btn-xs btn-default"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" CssClass="btn btn-xs btn-default" OnClientClick="javascript:return confirm('Are you sure you want to delete this entry?');"><i class="fa fa-times"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            <asp:ButtonColumn CommandName="Select" Text="Bidder Item Detail"></asp:ButtonColumn>
                        </Columns>
                        <PagerStyle CssClass="paginate_button active" HorizontalAlign="Center" />
                    </asp:DataGrid>
                            </div>
                        </fieldset>
                        </div>

                    <div class="tab-pane" id="iss2">
                                            <fieldset>
                                                <div class="row">
                                                    <section class="col col-6">
                                                        <label class="label">Attach Quotation doc.</label>
                                                        <asp:FileUpload ID="fuReciept" runat="server" />
                                                        <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="btnUpload_Click" />
                                                    </section>
                                                </div>
                                            </fieldset>
                                            <asp:GridView ID="grvAttachments"
                                                runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
                                                CssClass="table table-striped table-bordered table-hover" PagerStyle-CssClass="paginate_button active">
                                                <RowStyle CssClass="rowstyle" />
                                                <Columns>
                                                    <asp:BoundField DataField="FilePath" HeaderText="File Name" SortExpression="FilePath" />
                                                    <asp:TemplateField>
                                                     <ItemTemplate>
                                                       <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("FilePath") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
                                                     </ItemTemplate>
                                                   </asp:TemplateField>
                                                   <asp:TemplateField>
                                                   <ItemTemplate>
                                                  <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("FilePath") %>' runat = "server" OnClick = "DeleteFile" />
                                                  </ItemTemplate>
                                                  </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle CssClass="FooterStyle" />
                                                <HeaderStyle CssClass="headerstyle" />
                                                <PagerStyle CssClass="PagerStyle" />
                                                <RowStyle CssClass="rowstyle" />
                                            </asp:GridView>
                                        </div>
                    </div>
                 </div>
                </div>
                    <br />
                    <footer>
                        <asp:Button ID="btnRequest" runat="server" CssClass="btn btn-primary" OnClick="btnRequest_Click" Text="Request" ValidationGroup="Save" />
                        &nbsp;<asp:Button ID="btnCancel" runat="server" CssClass="btn btn-primary" OnClick="btnCancel_Click" Text="Back" />
                     <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="Search" />
                        <asp:Button ID="btnPrintworksheet" runat="server" CssClass="btn btn-primary" Text="Print WorkSheet" OnClientClick="javascript:Clickheretoprint('divprint')" />
                           <asp:HiddenField ID="hfDetailId" runat="server" />
                    </footer>

                </div>
            </div>
            <!-- end widget content -->

        </div>

        <!-- end widget div -->
        <div id="divprint" style="display: none;" visible="true">
             <table style="width: 100%;">
                <tr>
                    <td style="width: 17%; text-align:left;">
                        <img src="../img/CHAI%20Logo.png" width="70" height="50" /></td>
                    <td style="font-size: large; text-align: center;">
                        <strong>CHAI ZIMBABWE
                            <br />
                            BID ANALYSIS WORKSHEET</strong></td>
                </tr>
            </table>
            <asp:Repeater ID="Repeater1" runat="server" Visible="true">
                <HeaderTemplate>
                    <table border="1">
                        <tr>
                            <b>
                                <td>Request No
                                </td>
                                <td>Requester
                                </td>
                                <td>Requested Date
                                </td>
                                <td>Approved By
                                </td>
                                <td>Needed for
                                </td>
                                <td>Special Need
                                </td>
                                 <td>Estimated Cost
                                </td>
                            </b>
                        </tr>
                        <tr>
                            <b>
                                <td>
                                    <asp:Label ID="lblrequestNo" runat="server" Text=""></asp:Label>
                                </td>

                                <td>
                                    <asp:Label ID="lblRequester" runat="server" Text=""></asp:Label>
                                </td>

                                <td>
                                    <asp:Label ID="lblRequestDate0" runat="server" Text=""></asp:Label>
                                </td>

                                <td>
                                    <asp:Label ID="lblApprovedBy" runat="server" Text=""></asp:Label>
                                </td>


                                <td>
                                    <asp:Label ID="lblSpecialNeed" runat="server" Text=""></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblEstimatedTotalCost" runat="server" Text=""></asp:Label>
                                </td>
                            </b>

                        </tr>

                        <tr>
                           
                            <td>Supplier 1
                            </td>
                            <td></td>
                            <td>Supplier 2

                            </td>
                            <td>
                            <td>Supplier 3
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Item Required
                            </td>
                            <td>Qty
                            </td>
                            <td>Unit Cost 
                            </td>
                            <td>Total Cost</td>
                            <td>Unit Cost

                            </td>
                            <td>Total Cost</td>
                            <td>Unit Cost
                            </td>
                            <td>Total Cost</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "ItemAccount.AccountName")%>
                        
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "Qty")%>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </ItemTemplate>
                <SeparatorTemplate>
                </SeparatorTemplate>
                <AlternatingItemTemplate>
                </AlternatingItemTemplate>
                <SeparatorTemplate>
                </SeparatorTemplate>
                <FooterTemplate>
                    <tr>
                        <td>Total Amount</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Lead Time for Supplier</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td>Special Terms & Delivery</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <b>
                            <td>Selected Supplier
                            </td>
                            <td>
                                <asp:Label ID="lblselectedSupplier" runat="server" Text=""></asp:Label>
                            </td>
                            <td>Reason for Selection
                            </td>
                            <td>
                                <asp:Label ID="lblReasonforsel" runat="server" Text=""></asp:Label>
                            </td>
                            <td>Selected by
                            </td>
                            <td>
                                <asp:Label ID="lblSelectedBy" runat="server" Text=""></asp:Label>
                            </td>
                        </b>
                    </tr>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="modal fade" id="searchModal" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Search Bid Analysis Requests</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtSrchRequestNo">Request Number</label>
                                <asp:TextBox ID="txtSrchRequestNo" CssClass="form-control" ToolTip="Request No" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtSrchRequestDate">Requested Date</label>
                                <label class="input" style="position: relative; display: block; font-weight: 400;">
                                    <i class="icon-append fa fa-calendar" style="position: absolute; top: 5px; width: 22px; height: 22px; font-size: 14px; line-height: 22px; text-align: center; right: 5px; padding-left: 3px; border-left-width: 1px; border-left-style: solid; color: #A2A2A2;"></i>
                                    <asp:TextBox ID="txtSrchRequestDate" CssClass="form-control datepicker"
                                        data-dateformat="mm/dd/yy" ToolTip="Request Date" runat="server"></asp:TextBox>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="text-align: right;">
                        <div class="col-md-12">
                            <div class="form-group">
                                <asp:Button ID="btnFind" runat="server" OnClick="btnFind_Click" Text="Find" CssClass="btn btn-primary"></asp:Button>
                                <asp:Button ID="btnCancelSearch" Text="Close" runat="server" class="btn btn-primary"></asp:Button>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="well well-sm well-primary">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
   <asp:Panel ID="PnlShowBidder" runat="server" Style="position: absolute; top: 10%; left: 20%;" Visible="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                </div>
                <div class="modal-body no-padding">
                    <div class="jarviswidget" data-widget-editbutton="false" data-widget-custombutton="false">
                        <header>
                            <span class="widget-icon"><i class="fa fa-edit"></i></span>
                            <h2>Requested Item</h2>
                        </header>
                        <div>
                            <div class="jarviswidget-editbox"></div>
                            <div class="widget-body no-padding">
                                <div class="smart-form">

                                    <asp:DataGrid ID="dgItemDetail" runat="server" AlternatingRowStyle-CssClass="" CellPadding="0"
                                        CssClass="table table-striped table-bordered table-hover" PagerStyle-CssClass="paginate_button active" DataKeyField="Id" AutoGenerateColumns="false"
                                        GridLines="None" OnItemDataBound="dgItemDetail_ItemDataBound" ShowFooter="True" OnCancelCommand="dgItemDetail_CancelCommand" OnDeleteCommand="dgItemDetail_DeleteCommand" OnItemCommand="dgItemDetail_ItemCommand" OnUpdateCommand="dgItemDetail_UpdateCommand">



                                        <Columns>

                                                        <asp:TemplateColumn HeaderText="Requested Items">
                                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlItemAcc" runat="server" CssClass="form-control"
                                        AppendDataBoundItems="True" DataTextField="AccountName" DataValueField="Id"
                                         AutoPostBack="True">
                                        <asp:ListItem Value="0">Select Item Account</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RfvItemAcc" runat="server" CssClass="validator"
                                        ControlToValidate="ddlItemAcc" ErrorMessage="Item Account Required"
                                        InitialValue="0" SetFocusOnError="True" ValidationGroup="proedit">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="ddlFItemAcc" runat="server" CssClass="form-control"
                                        AppendDataBoundItems="True" DataTextField="AccountName" DataValueField="Id"
                                        EnableViewState="true" AutoPostBack="True">
                                        <asp:ListItem Value="0">Select Item Account</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RfvFItemAcc" runat="server" CssClass="validator"
                                        ControlToValidate="ddlFItemAcc" Display="Dynamic"
                                        ErrorMessage="Item Account Required" InitialValue="0" SetFocusOnError="True"
                                        ValidationGroup="proadd">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <%# DataBinder.Eval(Container.DataItem, "ItemAccount.AccountName")%>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                           
                                            <asp:TemplateColumn HeaderText="Item Description">
                                <ItemTemplate>
                                    <%# DataBinder.Eval(Container.DataItem, "ItemDescription")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" Text=' <%# DataBinder.Eval(Container.DataItem, "ItemDescription")%>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RfvDescription" runat="server" CssClass="validator" ControlToValidate="txtDescription" ErrorMessage="Item Description Required" ValidationGroup="proedit">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtFDescription" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RfvFDescription" runat="server" CssClass="validator" ControlToValidate="txtFDescription" ErrorMessage="Item Description Required" ValidationGroup="proadd">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                            </asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Qty">
                                                <ItemTemplate>
                                                    <%# DataBinder.Eval(Container.DataItem, "Qty")%>
                                                    <asp:HiddenField ID="hfqty" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Qty")%>'></asp:HiddenField>
                                                </ItemTemplate>
                                                  <EditItemTemplate>
                                                            <asp:TextBox ID="txtEdtQty" Enabled="false" runat="server" CssClass="form-control" Text='<%# DataBinder.Eval(Container.DataItem, "Quantity")%>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtQty" runat="server" Enabled="true" CssClass="form-control"></asp:TextBox>
                                                         
                                                        </FooterTemplate>
                                            </asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Unit Cost">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtUnitCost" runat="server" CssClass="form-control" Text=' <%# DataBinder.Eval(Container.DataItem, "UnitCost")%>' OnTextChanged="txtUnitCost_TextChanged" AutoPostBack="True" Height="20px" Width="104px"></asp:TextBox>
                                                 
                                                    <asp:RequiredFieldValidator ID="RfvSpecialTermsDelivery" runat="server" ControlToValidate="txtUnitCost" ErrorMessage="Unit Cost Required" ValidationGroup="Savedetail" InitialValue="0">*</asp:RequiredFieldValidator>
                                                </ItemTemplate>
                                                 <EditItemTemplate>
                                                            <asp:TextBox ID="txtEdtUnitCost" runat="server" CssClass="form-control" AutoPostBack="true" Text='<%# DataBinder.Eval(Container.DataItem, "UnitPrice")%>'></asp:TextBox>
                                                         
                                                          
                                                            <asp:RequiredFieldValidator ID="rfvEdtUnitCost" runat="server" ControlToValidate="txtEdtUnitCost" CssClass="validator" Display="Dynamic" ErrorMessage="Unit Cost is required" SetFocusOnError="true" ValidationGroup="edit"></asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtUnitCost" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtUnitCost_TextChanged"></asp:TextBox>
                                                          
                                                           <asp:RequiredFieldValidator ID="rfvUnitCost" runat="server" ControlToValidate="txtUnitCost" CssClass="validator" Display="Dynamic" ErrorMessage="Unit Cost is required" SetFocusOnError="true" ValidationGroup="save"></asp:RequiredFieldValidator>
                                                        </FooterTemplate>
                                            </asp:TemplateColumn>
                                            <asp:TemplateColumn HeaderText="Total Cost">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtTotalCost" runat="server" CssClass="form-control" Text=' <%# DataBinder.Eval(Container.DataItem, "TotalCost")%>' Height="16px" Width="94px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RfvTotalCost" runat="server" ControlToValidate="txtTotalCost" ErrorMessage="Total Cost Required" Enabled="false" ValidationGroup="Savedetail">*</asp:RequiredFieldValidator>
                                                </ItemTemplate>
                                                 <EditItemTemplate>
                                                            <asp:TextBox ID="txtEdtTotalCost" runat="server" Enabled="false" CssClass="form-control" Text='<%# DataBinder.Eval(Container.DataItem, "TotalPrice")%>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtTotalCost" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>                                                            
                                                        </FooterTemplate>
                                            </asp:TemplateColumn>

                                                       
                                    <asp:TemplateColumn HeaderText="Actions">
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" ValidationGroup="edit" CssClass="btn btn-xs btn-default"><i class="fa fa-save"></i></asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" CssClass="btn btn-xs btn-default"><i class="fa fa-times"></i></asp:LinkButton>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:LinkButton ID="lnkAddNew" runat="server" CommandName="AddNew" ValidationGroup="save" CssClass="btn btn-sm btn-success"><i class="fa fa-save"></i></asp:LinkButton>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit" CssClass="btn btn-xs btn-default"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" CssClass="btn btn-xs btn-default" OnClientClick="javascript:return confirm('Are you sure you want to delete this entry?');"><i class="fa fa-times"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                            
                                        </Columns>
                                        <PagerStyle CssClass="paginate_button active" HorizontalAlign="Center" />
                                    </asp:DataGrid>



                                    <footer>
                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnCancedetail_Click" />
                                    </footer>


                                </div>
                            </div>
                        </div>

                    </div>
                </div>







            </div>
        </div>
        <!-- /.modal-content -->
    </asp:Panel>
    
    
    <asp:Panel ID="pnlWarning" Visible="false" Style="position: absolute; top: 55px; left: 108px;" runat="server">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                </div>
                <div class="modal-body no-padding">
                    <div class="jarviswidget" data-widget-editbutton="false" data-widget-custombutton="false">
                        <div>
                            <div class="jarviswidget-editbox"></div>
                            <div class="widget-body no-padding">
                                <div class="smart-form">
                                    <div class="alert alert-block alert-danger">
                                        <h4 class="alert-heading">Warning</h4>
                                        <p>
                                            The current Request has no Approval Settings defined. Please contact your administrator
                                        </p>
                                    </div>
                                    <footer>
                                        <asp:Button ID="btnCancelPopup" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="btnCancelPopup_Click"></asp:Button>
                                    </footer>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </asp:Panel>
                        </div>

</asp:Content>
