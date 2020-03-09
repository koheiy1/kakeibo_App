crumb :root do
  link "Home", root_path
end

crumb :root do
  link "トップページ", root_path
end
crumb :income_index do
  link "収入登録一覧", incomes_path
  parent :root
end
crumb :income_new do
  link "収入登録", new_income_path
  parent :root
end
crumb :income_edit do
  link "収入編集", edit_income_path
  parent :root
end
crumb :income_show do
  link "収入登録表示", income_path
  parent :root
end
crumb :variablecost_index do
  link "変動費登録一覧", variablecosts_path
  parent :root
end

crumb :variablecost_new do
  link "変動費登録", new_variablecost_path
  parent :root
end
crumb :variablecost_edit do
  link "変動費編集", edit_variablecost_path
  parent :root
end
crumb :variablecost_show do
  link "変動費登録表示", variablecost_path
  parent :root
end
crumb :fixedcost_index do
  link "固定費登録一覧", fixedcosts_path
  parent :root
end

crumb :fixedcost_new do
  link "固定費登録",　new_fixedcost_path
  parent :root
end
crumb :fixedcost_edit do
  link "固定費編集",　edit_fixedcost_path
  parent :root
end
crumb :fixedcost_show do
  link "固定費登録表示",　fixedcost_path
  parent :root
end
crumb :income_value_index do
  link "収入詳細登録一覧", income_values_path
  parent :root
end
crumb :income_value_new do
  link "収入詳細登録", new_income_value_path
  parent :root
end
crumb :income_value_edit do
  link "収入詳細編集", edit_income_value_path
  parent :root
end
crumb :fixedcost_value_index do
  link "固定費詳細登録一覧", fixedcost_values_path
  parent :root
end
crumb :fixedcost_value_new do
  link "固定費詳細登録", new_fixedcost_value_path
  parent :root
end
crumb :fixedcost_value_edit do
  link "固定費詳細編集",　edit_fixedcost_value_path
  parent :root
end
crumb :variablecost_value_index do
  link "変動費詳細登録一覧", variablecost_values_path
  parent :root
end
crumb :variablecost_value_new do
  link "変動費詳細登録", new_variablecost_value_path
  parent :root
end
crumb :variablecost_value_edit do
  link "変動費詳細編集",　edit_variablecost_value_path
  parent :root
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).