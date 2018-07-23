class Changeempid < ActiveRecord::Migration

  def change
    rename_column :addresses, :emp_id, :empid
    rename_column :educational_details, :emp_id, :empid
    rename_column :employment_details, :emp_id, :empid
    rename_column :insurances, :emp_id, :empid
    rename_column :personal_details, :emp_id, :empid
    rename_column :pfs, :emp_id, :empid
    rename_column :addresses, :comp_id, :company_name
    rename_column :educational_details, :comp_id, :company_name
    rename_column :employment_details, :comp_id, :company_name
    rename_column :insurances, :comp_id, :company_name
    rename_column :personal_details, :comp_id, :company_name
    rename_column :pfs, :comp_id, :company_name
  end
end
