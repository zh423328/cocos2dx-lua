:project_input  
@echo 请输入项目名称，按回车，例：HelloWorld  
@set /p project_name=  
@if "%project_name%"=="" echo.项目名称不能为空！！":project_input  
  
  
:package_input  
@echo 请输入包名，按回车，例：com.sample.test  
@set /p package_name=  
@if "%package_name%"=="" echo.包名不能为空！！" :package_input  
  
  
@echo 开始创建工程:%project_name%，包名：%package_name%  
@create_project.py -project %project_name% -package %package_name% -language cpp  
@if not exist "..\..\projects\%project_name%" echo.创建失败！！":end  
  
  
@start ""  "..\..\projects\%project_name%"  
@echo 创建完成!  
:end  
@pause  
