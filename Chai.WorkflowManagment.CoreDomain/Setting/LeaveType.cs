﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Chai.WorkflowManagment.CoreDomain.Setting
{
    public partial class LeaveType : IEntity 
    {
        public LeaveType()
        { 
        
        }
        public int Id { get; set; }
        public string LeaveTypeName { get; set; }
        public string Status { get; set; }
       
    }
}
