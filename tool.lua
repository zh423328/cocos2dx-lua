---����ļ���Ҫ����Ѱ����Ҫ����������--
local path = "";

package.path = package.path .. ";D:\\Program Files (x86)\\Lua\\5.1\\clibs\\?.dll";

print (package.path)
require "lfs"

--print(lfs.__VERSION);

local filename = "LoginScene.cpp";

local filepath = "C:\\luachange\\tmp\\";
local filepathto = "C:\\luachange\\tmp1\\";
local filepathpathtxt = "C:\\luachange\\tmp1\\1.txt";
--��ȡ�ļ�--

local BUFSIZE = 2^10 ;		--1k
local file = assert(io.open(filepath..filename,"r"));
local fileto = io.open(filepathto..filename,"w");
local filetotxt = io.open(filepathpathtxt,"w");

local i = 0;
local j = 0;

if file then

	while true do

		----
		local str = file:read("*line");

		--ĩβ--
		if not str then break end

		str = str .. "\n";

		--local pat = '"%s-[^"]-[\128-\255]+[^"]-[^.][^h-H]%s-"';

	--�ַ����Һ��滻(-�������ٵ��滻)
		local newstr = string.gsub(str,'"%s-[^"]-[\161-\254]+[^"]-%s-"',
				function(x)
				filetotxt:write(string.format("%d\t%s\n",i+1,x));
				i=i+1;
				return string.format("GAMETXT->GetGameTxt(%d)",i)
				end );

		fileto:write(newstr);
	end
end



--[[function extractChinese(s)
    for m in string.gmatch(s,'"[\176-\254]+"') do
        print(m)
    end
end
ss = 'foo"����"a"���"foo'
extractChinese(ss)--]]