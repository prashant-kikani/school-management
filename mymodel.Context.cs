﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class schooldbEntities1 : DbContext
    {
        public schooldbEntities1()
            : base("name=schooldbEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<admin> admins { get; set; }
        public virtual DbSet<attelo> atteloes { get; set; }
        public virtual DbSet<employee> employees { get; set; }
        public virtual DbSet<fac_attendence> fac_attendence { get; set; }
        public virtual DbSet<fee> fees { get; set; }
        public virtual DbSet<login> logins { get; set; }
        public virtual DbSet<mark> marks { get; set; }
        public virtual DbSet<myclass> myclasses { get; set; }
        public virtual DbSet<period> periods { get; set; }
        public virtual DbSet<ragistration> ragistrations { get; set; }
        public virtual DbSet<salary> salaries { get; set; }
        public virtual DbSet<school> schools { get; set; }
        public virtual DbSet<status> status { get; set; }
        public virtual DbSet<stu_attendance> stu_attendance { get; set; }
        public virtual DbSet<student> students { get; set; }
        public virtual DbSet<subject> subjects { get; set; }
        public virtual DbSet<time_table> time_table { get; set; }
    }
}