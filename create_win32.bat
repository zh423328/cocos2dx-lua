:project_input  
@echo ��������Ŀ���ƣ����س�������HelloWorld  
@set /p project_name=  
@if "%project_name%"=="" echo.��Ŀ���Ʋ���Ϊ�գ���":project_input  
  
  
:package_input  
@echo ��������������س�������com.sample.test  
@set /p package_name=  
@if "%package_name%"=="" echo.��������Ϊ�գ���" :package_input  
  
  
@echo ��ʼ��������:%project_name%��������%package_name%  
@create_project.py -project %project_name% -package %package_name% -language cpp  
@if not exist "..\..\projects\%project_name%" echo.����ʧ�ܣ���":end  
  
  
@start ""  "..\..\projects\%project_name%"  
@echo �������!  
:end  
@pause  
