
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;			
use ieee.std_logic_textio.all;

use ieee.numeric_std.all;  
library std;
use std.textio.all;

entity testbench is
end;

architecture test of testbench is		 

component xorsalsa8 	   
	port(			  
	clk		: in std_logic;
	bx		: in std_logic;
	
	b0		: in std_logic_vector(31 downto 0);
	b1		: in std_logic_vector(31 downto 0);
	b2		: in std_logic_vector(31 downto 0);
	b3		: in std_logic_vector(31 downto 0);
	b4		: in std_logic_vector(31 downto 0);
	b5		: in std_logic_vector(31 downto 0);
	b6		: in std_logic_vector(31 downto 0);
	b7		: in std_logic_vector(31 downto 0);
	b8		: in std_logic_vector(31 downto 0);
	b9		: in std_logic_vector(31 downto 0);
	ba			: in std_logic_vector(31 downto 0);
	bb		: in std_logic_vector(31 downto 0);
	bc			: in std_logic_vector(31 downto 0);
	bd		: in std_logic_vector(31 downto 0);
	be			: in std_logic_vector(31 downto 0);
	bf			: in std_logic_vector(31 downto 0);
	
	d0		: out std_logic_vector(31 downto 0);
	d1		: out std_logic_vector(31 downto 0);
	d2		: out std_logic_vector(31 downto 0);
	d3		: out std_logic_vector(31 downto 0);
	d4		: out std_logic_vector(31 downto 0);
	d5		: out std_logic_vector(31 downto 0);
	d6		: out std_logic_vector(31 downto 0);
	d7		: out std_logic_vector(31 downto 0);
	d8		: out std_logic_vector(31 downto 0);
	d9		: out std_logic_vector(31 downto 0);
	da			: out std_logic_vector(31 downto 0);
	db		: out std_logic_vector(31 downto 0);
	dc			: out std_logic_vector(31 downto 0);
	dd		: out std_logic_vector(31 downto 0);
	de			: out std_logic_vector(31 downto 0);
	df			: out std_logic_vector(31 downto 0);

	rdy 		: out std_logic
	);
end component;
	
	signal clk, bx,  rdy, f, endtest: std_logic;
	signal b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,ba,bb,bc,bd,be,bf : std_logic_vector(31 downto 0);	   
	signal d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df : std_logic_vector(31 downto 0);	
	signal e0,e1,e2,e3,e4,e5,e6,e7,e8,e9,ea,eb,ec,ed,ee,ef : std_logic_vector(31 downto 0);
	signal v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,va,vb,vc,vd,ve,vf : std_logic_vector(31 downto 0);			 
	
begin
	xcr : xorsalsa8 
	port map(clk=>clk, bx=>bx, rdy=>rdy,	   
	b0=>b0,b1=>b1,b2=>b2,b3=>b3,b4=>b4,b5=>b5,b6=>b6,b7=>b7,
	b8=>b8,b9=>b9,ba=>ba,bb=>bb,bc=>bc,bd=>bd,be=>be,bf=>bf,	
	d0=>d0,d1=>d1,d2=>d2,d3=>d3,d4=>d4,d5=>d5,d6=>d6,d7=>d7,
	d8=>d8,d9=>d9,da=>da,db=>db,dc=>dc,dd=>dd,de=>de,df=>df	 
	);
																		    
	clock : process
	begin
		clk<='0';
		wait for 50 ns;
		clk<='1';
		wait for 50 ns;
	end process;
	
	read_test : process(clk)	
	file test : text open read_mode is "test.txt";				
	procedure readTest(file test :  text) is
	variable testline : line;
	variable val : integer;					
	variable hex : std_logic_vector(31 downto 0);	   	 
	
	begin	
		readline(test, testline);  hread(testline, hex); b0<=hex;		   
		readline(test, testline);  hread(testline, hex); b1<=hex;
		readline(test, testline);  hread(testline, hex); b2<=hex;
		readline(test, testline);  hread(testline, hex); b3<=hex;	
		readline(test, testline);  hread(testline, hex); b4<=hex;		   
		readline(test, testline);  hread(testline, hex); b5<=hex;
		readline(test, testline);  hread(testline, hex); b6<=hex;
		readline(test, testline);  hread(testline, hex); b7<=hex;
		readline(test, testline);  hread(testline, hex); b8<=hex;		   
		readline(test, testline);  hread(testline, hex); b9<=hex;
		readline(test, testline);  hread(testline, hex); ba<=hex;
		readline(test, testline);  hread(testline, hex); bb<=hex;
		readline(test, testline);  hread(testline, hex); bc<=hex;		   
		readline(test, testline);  hread(testline, hex); bd<=hex;
		readline(test, testline);  hread(testline, hex); be<=hex;
		readline(test, testline);  hread(testline, hex); bf<=hex;	
	end procedure readTest;			      
	begin
		if clk'event and clk='1' then	  
			if not endfile(test) then
				readTest(test);				 
			end if;
		end if;
	end process;  			 
	
	del : process(clk)
	begin
		if clk'event and clk='1' then
			e0<=d0;
			e1<=d1;
			e2<=d2;
			e3<=d3;
			e4<=d4;
			e5<=d5;
			e6<=d6;
			e7<=d7;
			e8<=d8;
			e9<=d9;
			ea<=da;
			eb<=db;
			ec<=dc;
			ed<=dd;
			ee<=de;
			ef<=df;	
		end if;
	end process;
	
	
	read_ver : process(clk)					
	variable uu : std_logic_vector(31 downto 0):=(others=>'X');
	file ver : text open read_mode is "ver.txt";			
	procedure readVer(file test :  text) is
	variable testline : line;
	variable val : integer;					
	variable hex : std_logic_vector(31 downto 0);	   	   
	begin																	 
		readline(test, testline);  hread(testline, hex); v0<=hex;		   
		readline(test, testline);  hread(testline, hex); v1<=hex;
		readline(test, testline);  hread(testline, hex); v2<=hex;
		readline(test, testline);  hread(testline, hex); v3<=hex;	
		readline(test, testline);  hread(testline, hex); v4<=hex;		   
		readline(test, testline);  hread(testline, hex); v5<=hex;
		readline(test, testline);  hread(testline, hex); v6<=hex;
		readline(test, testline);  hread(testline, hex); v7<=hex;
		readline(test, testline);  hread(testline, hex); v8<=hex;		   
		readline(test, testline);  hread(testline, hex); v9<=hex;
		readline(test, testline);  hread(testline, hex); va<=hex;
		readline(test, testline);  hread(testline, hex); vb<=hex;
		readline(test, testline);  hread(testline, hex); vc<=hex;		   
		readline(test, testline);  hread(testline, hex); vd<=hex;
		readline(test, testline);  hread(testline, hex); ve<=hex;
		readline(test, testline);  hread(testline, hex); vf<=hex;	
	end procedure readVer;	
	begin					   		  		  
		if clk'event and clk='1' then
			if rdy='1' then
				if not endfile(ver) then	 
					readVer(ver);				  
				if not v0=d0 then f<='0'; report "Error in data 0"; end if;
				if not v1=d1 then f<='0'; report "Error in data 1"; end if;
				if not v2=d2 then f<='0'; report "Error in data 2"; end if;					  
				if not v3=d3 then f<='0'; report "Error in data 3"; end if;
				if not v4=d4 then f<='0'; report "Error in data 4"; end if;
				if not v5=d5 then f<='0'; report "Error in data 5"; end if;
				if not v6=d6 then f<='0'; report "Error in data 6"; end if;					  
				if not v7=d7 then f<='0'; report "Error in data 7"; end if;	
				if not v8=d8 then f<='0'; report "Error in data 8"; end if;												     
				if not v9=d9 then f<='0'; report "Error in data 9"; end if;
				if not va=da then f<='0'; report "Error in data a"; end if;					  
				if not vb=db then f<='0'; report "Error in data b"; end if;
				if not vc=dc then f<='0'; report "Error in data c"; end if;
				if not vd=dd then f<='0'; report "Error in data d"; end if;
				if not ve=de then f<='0'; report "Error in data e"; end if;					  
				if not vf=df   then f<='0'; report "Error in data f"; end if;		
				else
					endtest<='1';
				end if;
			else
				f<='1';
				endtest<='0';
			end if;
		end if;			
	end process;
	
	reset : process
	begin
		bx<='1';
		wait for 175 ns;
		bx<='0';
		wait;
	end process;			   		 
	
   say : process
	begin
		if endtest='1' then
			if f='1' then
				report "Test passed";
			else
				report "Test failed";
			end if;	  
			wait;
		end if;
		wait for 50 ns;
	end process;
	
end test;
