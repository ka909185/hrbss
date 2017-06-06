require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(社員番号 基準日 承認段階 承認者番号 編集可能(0:不可 1:可能) 一括承認(0:不可 1:可能) 引継ぎ区分)
  csv << csv_column_names
  @dmanagers.each do |t|
    csv_column_values = [
      t.emp.employeecode,
      t.start_date.strftime("%Y/%m/%d"),
      1,
      t.maneger.employeecode,
      1,
      0,
      0
    ]
    csv << csv_column_values
  end
end
