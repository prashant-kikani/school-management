//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace school_management
{
    using System;
    using System.Collections.Generic;
    
    public partial class fac_attendence
    {
        public string emp_id { get; set; }
        public System.DateTime date { get; set; }
        public Nullable<int> is_present { get; set; }
    
        public virtual employee employee { get; set; }
    }
}
