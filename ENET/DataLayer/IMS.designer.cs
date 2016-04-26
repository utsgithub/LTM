﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IMS.DataLayer
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="IMS_Sync")]
	public partial class IMSDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void Insertuser(user instance);
    partial void Updateuser(user instance);
    partial void Deleteuser(user instance);
    #endregion
		
		public IMSDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public IMSDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public IMSDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public IMSDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public IMSDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<user> users
		{
			get
			{
				return this.GetTable<user>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.users")]
	public partial class user : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID;
		
		private string _userName;
		
		private string _loginName;
		
		private System.Nullable<int> _district_ID;
		
		private System.Nullable<int> _maxHours;
		
		private string _maxCost;
		
		private string _userType;
		
		private string _AspNetUserID;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnuserNameChanging(string value);
    partial void OnuserNameChanged();
    partial void OnloginNameChanging(string value);
    partial void OnloginNameChanged();
    partial void Ondistrict_IDChanging(System.Nullable<int> value);
    partial void Ondistrict_IDChanged();
    partial void OnmaxHoursChanging(System.Nullable<int> value);
    partial void OnmaxHoursChanged();
    partial void OnmaxCostChanging(string value);
    partial void OnmaxCostChanged();
    partial void OnuserTypeChanging(string value);
    partial void OnuserTypeChanged();
    partial void OnAspNetUserIDChanging(string value);
    partial void OnAspNetUserIDChanged();
    #endregion
		
		public user()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._ID = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userName", DbType="NVarChar(255)")]
		public string userName
		{
			get
			{
				return this._userName;
			}
			set
			{
				if ((this._userName != value))
				{
					this.OnuserNameChanging(value);
					this.SendPropertyChanging();
					this._userName = value;
					this.SendPropertyChanged("userName");
					this.OnuserNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_loginName", DbType="NVarChar(255)")]
		public string loginName
		{
			get
			{
				return this._loginName;
			}
			set
			{
				if ((this._loginName != value))
				{
					this.OnloginNameChanging(value);
					this.SendPropertyChanging();
					this._loginName = value;
					this.SendPropertyChanged("loginName");
					this.OnloginNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_district_ID", DbType="Int")]
		public System.Nullable<int> district_ID
		{
			get
			{
				return this._district_ID;
			}
			set
			{
				if ((this._district_ID != value))
				{
					this.Ondistrict_IDChanging(value);
					this.SendPropertyChanging();
					this._district_ID = value;
					this.SendPropertyChanged("district_ID");
					this.Ondistrict_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_maxHours", DbType="Int")]
		public System.Nullable<int> maxHours
		{
			get
			{
				return this._maxHours;
			}
			set
			{
				if ((this._maxHours != value))
				{
					this.OnmaxHoursChanging(value);
					this.SendPropertyChanging();
					this._maxHours = value;
					this.SendPropertyChanged("maxHours");
					this.OnmaxHoursChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_maxCost", DbType="NVarChar(255)")]
		public string maxCost
		{
			get
			{
				return this._maxCost;
			}
			set
			{
				if ((this._maxCost != value))
				{
					this.OnmaxCostChanging(value);
					this.SendPropertyChanging();
					this._maxCost = value;
					this.SendPropertyChanged("maxCost");
					this.OnmaxCostChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userType", DbType="NVarChar(255)")]
		public string userType
		{
			get
			{
				return this._userType;
			}
			set
			{
				if ((this._userType != value))
				{
					this.OnuserTypeChanging(value);
					this.SendPropertyChanging();
					this._userType = value;
					this.SendPropertyChanged("userType");
					this.OnuserTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AspNetUserID", DbType="NVarChar(128)")]
		public string AspNetUserID
		{
			get
			{
				return this._AspNetUserID;
			}
			set
			{
				if ((this._AspNetUserID != value))
				{
					this.OnAspNetUserIDChanging(value);
					this.SendPropertyChanging();
					this._AspNetUserID = value;
					this.SendPropertyChanged("AspNetUserID");
					this.OnAspNetUserIDChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591