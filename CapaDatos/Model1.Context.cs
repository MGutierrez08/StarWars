﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CapaDatos
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class RepublicaGalacticaEntities : DbContext
    {
        public RepublicaGalacticaEntities()
            : base("name=RepublicaGalacticaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Maestro> Maestro { get; set; }
        public virtual DbSet<OrdenJedi> OrdenJedi { get; set; }
        public virtual DbSet<Sistema> Sistema { get; set; }
        public virtual DbSet<SistemasAmenazados> SistemasAmenazados { get; set; }
    
        public virtual ObjectResult<Informe_Result> Informe()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Informe_Result>("Informe");
        }
    }
}
