-- Read comments for this source in readme.txt, because some vhdl-s forbids russian even in comments
	
library ieee;
use ieee.std_logic_1164.all;

entity input is
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
	
	c0		: out std_logic_vector(31 downto 0);
	c1		: out std_logic_vector(31 downto 0);
	c2		: out std_logic_vector(31 downto 0);
	c3		: out std_logic_vector(31 downto 0);
	c4		: out std_logic_vector(31 downto 0);
	c5		: out std_logic_vector(31 downto 0);
	c6		: out std_logic_vector(31 downto 0);
	c7		: out std_logic_vector(31 downto 0);
	c8		: out std_logic_vector(31 downto 0);
	c9		: out std_logic_vector(31 downto 0);
	ca		: out std_logic_vector(31 downto 0);
	cb		: out std_logic_vector(31 downto 0);
	cc		: out std_logic_vector(31 downto 0);
	cd		: out std_logic_vector(31 downto 0);
	ce		: out std_logic_vector(31 downto 0);
	cf		: out std_logic_vector(31 downto 0);
	
	u00		: out std_logic_vector(31 downto 0);
	u01		: out std_logic_vector(31 downto 0);
	u02		: out std_logic_vector(31 downto 0);
	u03		: out std_logic_vector(31 downto 0);

	u10		: out std_logic_vector(31 downto 0);
	u11		: out std_logic_vector(31 downto 0);
	u12		: out std_logic_vector(31 downto 0);
	u13		: out std_logic_vector(31 downto 0);

	u20		: out std_logic_vector(31 downto 0);
	u21		: out std_logic_vector(31 downto 0);
	u22		: out std_logic_vector(31 downto 0);
	u23		: out std_logic_vector(31 downto 0);

	u30		: out std_logic_vector(31 downto 0);
	u31		: out std_logic_vector(31 downto 0);
	u32		: out std_logic_vector(31 downto 0);
	u33		: out std_logic_vector(31 downto 0);
	
	obx		: out std_logic
	);
end;

architecture rtl of input is
	signal bx0 : std_logic_vector(31 downto 0);
	signal bx1 : std_logic_vector(31 downto 0);
	signal bx2 : std_logic_vector(31 downto 0);
	signal bx3 : std_logic_vector(31 downto 0);

	signal bx4 : std_logic_vector(31 downto 0);
	signal bx5 : std_logic_vector(31 downto 0);
	signal bx6 : std_logic_vector(31 downto 0);
	signal bx7 : std_logic_vector(31 downto 0);

	signal bx8 : std_logic_vector(31 downto 0);
	signal bx9 : std_logic_vector(31 downto 0);
	signal bxa : std_logic_vector(31 downto 0);
	signal bxb : std_logic_vector(31 downto 0);

	signal bxc : std_logic_vector(31 downto 0);
	signal bxd : std_logic_vector(31 downto 0);
	signal bxe : std_logic_vector(31 downto 0);
	signal bxf : std_logic_vector(31 downto 0);
	
begin
	process(clk)
	begin
		if clk'event and clk='1' then		
			obx<=bx;
			if bx='1' then
				bx0<=b0;
				bx1<=b1;
				bx2<=b2;
				bx3<=b3;												
				bx4<=b4;
				bx5<=b5;
				bx6<=b6;
				bx7<=b7;												
				bx8<=b8;
				bx9<=b9;
				bxa<=ba;
				bxb<=bb;												
				bxc<=bc;
				bxd<=bd;
				bxe<=be;
				bxf<=bf;	
		  else
				c0<=b0 xor bx0;
			    c1<=b1 xor bx1;
				c2<=b2 xor bx2;
				c3<=b3 xor bx3;
				c4<=b4 xor bx4;
				c5<=b5 xor bx5;
				c6<=b6 xor bx6;
				c7<=b7 xor bx7;
				c8<=b8 xor bx8;													   
				c9<=b9 xor bx9;
				ca<=ba xor bxa;
				cb<=bb xor bxb;
				cc<=bc xor bxc;
				cd<=bd xor bxd;
				ce<=be xor bxe;
				cf<=bf xor bxf;
		
				u00<=b0 xor bx0;
				u01<=b5 xor bx5;
				u02<=ba xor bxa;
				u03<=bf xor bxf;
		
				u10<=bc xor bxc;
				u11<=b1 xor bx1;
				u12<=b6 xor bx6;
				u13<=bb xor bxb;
		
				u20<=b8 xor bx8;
				u21<=bd xor bxd;
				u22<=b2 xor bx2;
				u23<=b7 xor bx7;	  
		
				u30<=b4 xor bx4;
				u31<=b9 xor bx9;
				u32<=be xor bxe;
				u33<=b3 xor bx3;		
			end if;
		end if;
	end process;
end rtl;

library ieee;
use ieee.std_logic_1164.all;				
use ieee.std_logic_arith.all;	
use ieee.std_logic_unsigned.all;		
entity output is
	port(			
	clk		: in std_logic;
	bx			: in std_logic;
	
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
	
	u00		: in std_logic_vector(31 downto 0);
	u01		: in std_logic_vector(31 downto 0);
	u02		: in std_logic_vector(31 downto 0);
	u03		: in std_logic_vector(31 downto 0);

	u10		: in std_logic_vector(31 downto 0);
	u11		: in std_logic_vector(31 downto 0);
	u12		: in std_logic_vector(31 downto 0);
	u13		: in std_logic_vector(31 downto 0);		   
	
	u20		: in std_logic_vector(31 downto 0);
	u21		: in std_logic_vector(31 downto 0);
	u22		: in std_logic_vector(31 downto 0);
	u23		: in std_logic_vector(31 downto 0);

	u30		: in std_logic_vector(31 downto 0);
	u31		: in std_logic_vector(31 downto 0);
	u32		: in std_logic_vector(31 downto 0);
	u33		: in std_logic_vector(31 downto 0);
	
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
	
	rdy		: out std_logic
	);
end;
architecture rtl of output is  	   
signal bxx : std_logic;
begin
	process(clk) 
	begin		  
		if clk'event and clk='1' then
			bxx<=not bx;	
			if bx='0' then
			--rdy<=bxx;
			d0<=b0+u00;
			d5<=b5+u01;
			da<=ba+u02;
			df<=bf+u03;		
			dc<=bc+u10;
			d1<=b1+u11;
			d6<=b6+u12;
			db<=bb+u13;	   		
			d8<=b8+u20;
			dd<=bd+u21;
			d2<=b2+u22;
			d7<=b7+u23;		
			d4<=b4+u30;
			d9<=b9+u31;
			de<=be+u32;
			d3<=b3+u33;			
			end if;
		end if;
	end process;  
	rdy<=bxx;
			 
end rtl;
 
library ieee;
use ieee.std_logic_1164.all;	   
entity shifter is
	port(															    
	clk	: in  std_logic;	   
	bx		: in   std_logic;
	b		: in    std_logic_vector(31 downto 0);
	d		: out  std_logic_vector(31 downto 0)
	);	  
end;	  
architecture rtl of shifter is	  
type mem is array (0 to 30) of std_logic_vector(31 downto 0);	  
signal mm : mem;
begin	
	process(clk)		  
	begin		
		if clk'event and clk='1'  then		 
			if bx='0' then				 			      
				mm(0)<=b;
				for i in 0 to 29 loop
					mm(i+1)<=mm(i);
				end loop;
				d<=mm(30);
			end if;	
		end if;
	end process;
end rtl;	

library ieee;
use ieee.std_logic_1164.all;
entity delay  is
	port(
	clk		: in std_logic;
	bx			: in std_logic;					
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
	df			: out std_logic_vector(31 downto 0)
	);
end;
architecture rtl of delay is	   	  
component shifter
port(															 
	clk	: in  std_logic;	   
	bx		: in   std_logic;
	b		: in    std_logic_vector(31 downto 0);
	d		: out  std_logic_vector(31 downto 0)
	);	  		  
end component;					   
signal srdy : std_logic_vector(31 downto 0);
begin				  
	sft0 : shifter port map(clk=>clk, bx=>bx, b=>b0, d=>d0);   
	sft1 : shifter port map(clk=>clk, bx=>bx, b=>b1, d=>d1);   
	sft2 : shifter port map(clk=>clk, bx=>bx, b=>b2, d=>d2);   
	sft3 : shifter port map(clk=>clk, bx=>bx, b=>b3, d=>d3);
	sft4 : shifter port map(clk=>clk, bx=>bx, b=>b4, d=>d4);   
	sft5 : shifter port map(clk=>clk, bx=>bx, b=>b5, d=>d5);   
	sft6 : shifter port map(clk=>clk, bx=>bx, b=>b6, d=>d6);   
	sft7 : shifter port map(clk=>clk, bx=>bx, b=>b7, d=>d7);   
	sft8 : shifter port map(clk=>clk, bx=>bx, b=>b8, d=>d8);   
	sft9 : shifter port map(clk=>clk, bx=>bx, b=>b9, d=>d9);   
	sfta : shifter port map(clk=>clk, bx=>bx, b=>ba, d=>da);   
	sftb : shifter port map(clk=>clk, bx=>bx, b=>bb, d=>db);   
	sftc : shifter port map(clk=>clk, bx=>bx, b=>bc, d=>dc);   
	sftd : shifter port map(clk=>clk, bx=>bx, b=>bd, d=>dd);   
	sfte : shifter port map(clk=>clk, bx=>bx, b=>be, d=>de);   
	sftf : shifter port map(clk=>clk, bx=>bx, b=>bf, d=>df);   
end rtl;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity r_operation is 
	generic(shift:integer:=7);
	port(
	clk		: in std_logic;			 
	bx 		: in std_logic;
	
	c0		: in std_logic_vector(31 downto 0);
	c1		: in std_logic_vector(31 downto 0);
	c2		: in std_logic_vector(31 downto 0);
	c3		: in std_logic_vector(31 downto 0);
	
	u00		: in std_logic_vector(31 downto 0);
	u01		: in std_logic_vector(31 downto 0);
	u02		: in std_logic_vector(31 downto 0);
	u03		: in std_logic_vector(31 downto 0);

	u10		: in std_logic_vector(31 downto 0);
	u11		: in std_logic_vector(31 downto 0);
	u12		: in std_logic_vector(31 downto 0);
	u13		: in std_logic_vector(31 downto 0);

	v0		: in std_logic_vector(31 downto 0);
	v1		: in std_logic_vector(31 downto 0);
	v2		: in std_logic_vector(31 downto 0);
	v3		: in std_logic_vector(31 downto 0);
	
	cc0		: out std_logic_vector(31 downto 0);
	cc1		: out std_logic_vector(31 downto 0);
	cc2		: out std_logic_vector(31 downto 0);
	cc3		: out std_logic_vector(31 downto 0);
	
	uu00	: out std_logic_vector(31 downto 0);
	uu01	: out std_logic_vector(31 downto 0);
	uu02	: out std_logic_vector(31 downto 0);
	uu03	: out std_logic_vector(31 downto 0);

	uu10	: out std_logic_vector(31 downto 0);
	uu11	: out std_logic_vector(31 downto 0);
	uu12	: out std_logic_vector(31 downto 0);
	uu13	: out std_logic_vector(31 downto 0);

	vv0		: out std_logic_vector(31 downto 0);
	vv1		: out std_logic_vector(31 downto 0);
	vv2		: out std_logic_vector(31 downto 0);
	vv3		: out std_logic_vector(31 downto 0);
	
	obx      : out std_logic
	);
end;
	
architecture rtl of r_operation is

	function r_op(v : in std_logic_vector(31 downto 0); 
					u0 : in std_logic_vector(31 downto 0); u1 : in std_logic_vector(31 downto 0))
		return  std_logic_vector
		is
		variable sum, uu1, uu2, uor, uxor : unsigned(31 downto 0);
		begin
			sum:=unsigned(u0) + unsigned(u1);	   
			uu1:=sum sll shift;
			uu2:=sum srl 32-shift;
			uor:=uu1 or uu2;
			uxor:=unsigned(v) xor uor;	
			return std_logic_vector(uxor);
		end function r_op;			
begin
	process(clk)
	begin
		if clk'event and clk='1' then		   	
			obx<=bx;
			if bx='0' then
				cc0<=c0;
				cc1<=c1;
				cc2<=c2;
				cc3<=c3;
			
				uu00<=u00;
				uu01<=u01;
				uu02<=u02;
				uu03<=u03;
			
				uu10<=u10;
				uu11<=u11;
				uu12<=u12;
				uu13<=u13;
			
				vv0<=r_op(v0, u00, u10);
				vv1<=r_op(v1, u01, u11);
				vv2<=r_op(v2, u02, u12);
				vv3<=r_op(v3, u03, u13);		
			end if;
		end if;
	end process;
end rtl;

library ieee;
use ieee.std_logic_1164.all;
entity stage is
	port(		
	clk		: in std_logic;
	bx			: in std_logic;	 
	
	u00		: in std_logic_vector(31 downto 0);
	u01		: in std_logic_vector(31 downto 0);
	u02		: in std_logic_vector(31 downto 0);
	u03		: in std_logic_vector(31 downto 0);

	u10		: in std_logic_vector(31 downto 0);
	u11		: in std_logic_vector(31 downto 0);
	u12		: in std_logic_vector(31 downto 0);
	u13		: in std_logic_vector(31 downto 0);		   
	
	u20		: in std_logic_vector(31 downto 0);
	u21		: in std_logic_vector(31 downto 0);
	u22		: in std_logic_vector(31 downto 0);
	u23		: in std_logic_vector(31 downto 0);

	u30		: in std_logic_vector(31 downto 0);
	u31		: in std_logic_vector(31 downto 0);
	u32		: in std_logic_vector(31 downto 0);
	u33		: in std_logic_vector(31 downto 0);


	v00		: out std_logic_vector(31 downto 0);
	v01		: out std_logic_vector(31 downto 0);
	v02		: out std_logic_vector(31 downto 0);
	v03		: out std_logic_vector(31 downto 0);

	v10		: out std_logic_vector(31 downto 0);
	v11		: out std_logic_vector(31 downto 0);
	v12		: out std_logic_vector(31 downto 0);
	v13		: out std_logic_vector(31 downto 0);		   
	
	v20		: out std_logic_vector(31 downto 0);
	v21		: out std_logic_vector(31 downto 0);
	v22		: out std_logic_vector(31 downto 0);
	v23		: out std_logic_vector(31 downto 0);

	v30		: out std_logic_vector(31 downto 0);
	v31		: out std_logic_vector(31 downto 0);
	v32		: out std_logic_vector(31 downto 0);
	v33		: out std_logic_vector(31 downto 0);
	
	obx 		: out std_logic
	);
end;
architecture rtl of stage is		

	component r_operation generic (shift : integer);  
	port(
	clk		: in std_logic;	 
	bx			: in std_logic;
	
	c0		: in std_logic_vector(31 downto 0);
	c1		: in std_logic_vector(31 downto 0);
	c2		: in std_logic_vector(31 downto 0);
	c3		: in std_logic_vector(31 downto 0);
	
	u00		: in std_logic_vector(31 downto 0);
	u01		: in std_logic_vector(31 downto 0);
	u02		: in std_logic_vector(31 downto 0);
	u03		: in std_logic_vector(31 downto 0);

	u10		: in std_logic_vector(31 downto 0);
	u11		: in std_logic_vector(31 downto 0);
	u12		: in std_logic_vector(31 downto 0);
	u13		: in std_logic_vector(31 downto 0);

	v0		: in std_logic_vector(31 downto 0);
	v1		: in std_logic_vector(31 downto 0);
	v2		: in std_logic_vector(31 downto 0);
	v3		: in std_logic_vector(31 downto 0);
	
	cc0		: out std_logic_vector(31 downto 0);
	cc1		: out std_logic_vector(31 downto 0);
	cc2		: out std_logic_vector(31 downto 0);
	cc3		: out std_logic_vector(31 downto 0);
	
	uu00	: out std_logic_vector(31 downto 0);
	uu01	: out std_logic_vector(31 downto 0);
	uu02	: out std_logic_vector(31 downto 0);
	uu03	: out std_logic_vector(31 downto 0);

	uu10	: out std_logic_vector(31 downto 0);
	uu11	: out std_logic_vector(31 downto 0);
	uu12	: out std_logic_vector(31 downto 0);
	uu13	: out std_logic_vector(31 downto 0);

	vv0		: out std_logic_vector(31 downto 0);
	vv1		: out std_logic_vector(31 downto 0);
	vv2		: out std_logic_vector(31 downto 0);
	vv3		: out std_logic_vector(31 downto 0);	
	
	obx		: out std_logic
	);
	end component;			
	signal obx0, obx1, obx2, obx3, obx4, obx5, obx6  : std_logic;
	signal e00,e01,e02,e03,e10,e11,e12,e13,e20,e21,e22,e23,e30,e31,e32,e33 : std_logic_vector(31 downto 0);	   
	signal f00,f01,f02,f03,f10,f11,f12,f13,f20,f21,f22,f23,f30,f31,f32,f33 : std_logic_vector(31 downto 0);	   
	signal g00,g01,g02,g03,g10,g11,g12,g13,g20,g21,g22,g23,g30,g31,g32,g33 : std_logic_vector(31 downto 0);	   
	signal h00,h01,h02,h03,h10,h11,h12,h13,h20,h21,h22,h23,h30,h31,h32,h33 : std_logic_vector(31 downto 0);		 
	signal i00,i01,i02,i03,i10,i11,i12,i13,i20,i21,i22,i23,i30,i31,i32,i33 : std_logic_vector(31 downto 0);	   
	signal j00,j01,j02,j03,j10,j11,j12,j13,j20,j21,j22,j23,j30,j31,j32,j33 : std_logic_vector(31 downto 0);	 
	signal k00,k01,k02,k03,k10,k11,k12,k13,k20,k21,k22,k23,k30,k31,k32,k33 : std_logic_vector(31 downto 0);	 

begin
	rop1 : r_operation generic map (shift=>7)	     
	port map(clk=>clk,	 bx=>bx, obx=>obx0,											    
	c0=>u20,c1=>u21,c2=>u22,c3=>u23,
	u00=>u00,u01=>u01,u02=>u02,u03=>u03,
	u10=>u10,u11=>u11,u12=>u12,u13=>u13,
	v0=>u30,v1=>u31,v2=>u32,v3=>u33,
	cc0=>e20,cc1=>e21,cc2=>e22,cc3=>e23,
	uu00=>e00,uu01=>e01,uu02=>e02,uu03=>e03,
	uu10=>e10,uu11=>e11,uu12=>e12,uu13=>e13,
	vv0=>e30,vv1=>e31,vv2=>e32,vv3=>e33
	);	 
	rop2 : r_operation generic map(shift=>9)
	port map(clk=>clk, bx=>obx0, obx=>obx1,	
	c0=>e10,c1=>e11,c2=>e12,c3=>e13,
	u00=>e30,u01=>e31,u02=>e32,u03=>e33,
	u10=>e00,u11=>e01,u12=>e02,u13=>e03,
	v0=>e20,v1=>e21,v2=>e22,v3=>e23,   
	cc0=>f10,cc1=>f11,cc2=>f12,cc3=>f13,
	uu00=>f30,uu01=>f31,uu02=>f32,uu03=>f33,
	uu10=>f00,uu11=>f01,uu12=>f02,uu13=>f03,
	vv0=>f20,vv1=>f21,vv2=>f22,vv3=>f23
	);			   
	rop3 : r_operation generic map(shift=>13)	   	      
	port map(clk=>clk, bx=>obx1, obx=>obx2,	
	c0=>f00,c1=>f01,c2=>f02,c3=>f03,
	u00=>f20,u01=>f21,u02=>f22,u03=>f23,
	u10=>f30,u11=>f31,u12=>f32,u13=>f33,
	v0=>f10,v1=>f11,v2=>f12,v3=>f13,
	cc0=>g00,cc1=>g01,cc2=>g02,cc3=>g03,
	uu00=>g20,uu01=>g21,uu02=>g22,uu03=>g23,
	uu10=>g30,uu11=>g31,uu12=>g32,uu13=>g33,
	vv0=>g10,vv1=>g11,vv2=>g12,vv3=>g13
	);				  
	rop4 : r_operation generic map(shift=>18)	  
	port map(clk=>clk,	 bx=>obx2, obx=>obx3,			
	c0=>g30,c1=>g31,c2=>g32,c3=>g33,
	u00=>g10,u01=>g11,u02=>g12,u03=>g13,
	u10=>g20,u11=>g21,u12=>g22,u13=>g23,
	v0=>g00,v1=>g01,v2=>g02,v3=>g03,
	cc0=>h31,cc1=>h32,cc2=>h33,cc3=>h30,	  	
	uu00=>h13,uu01=>h10,uu02=>h11,uu03=>h12,
	uu10=>h22,uu11=>h23,uu12=>h20,uu13=>h21,
	vv0=>h00,vv1=>h01,vv2=>h02,vv3=>h03	
	);
	rop5 : r_operation generic map(shift=>7)  
	port map(clk=>clk,	 bx=>obx3, obx=>obx4,				   
	c0=>h20,c1=>h21,c2=>h22,c3=>h23,
	u00=>h00,u01=>h01,u02=>h02,u03=>h03,
	u10=>h30,u11=>h31,u12=>h32,u13=>h33,   
	v0=>h10,v1=>h11,v2=>h12,v3=>h13,
	cc0=>i20,cc1=>i21,cc2=>i22,cc3=>i23,
	uu00=>i00,uu01=>i01,uu02=>i02,uu03=>i03,
	uu10=>i30,uu11=>i31,uu12=>i32,uu13=>i33,
	vv0=>i10,vv1=>i11,vv2=>i12,vv3=>i13
	);			   
	rop6 : r_operation generic map(shift=>9)  	
	port map(clk=>clk,	 bx=>obx4, obx=>obx5,					 
	c0=>i30,c1=>i31,c2=>i32,c3=>i33,
	u00=>i10,u01=>i11,u02=>i12,u03=>i13,
	u10=>i00,u11=>i01,u12=>i02,u13=>i03,
	v0=>i20,v1=>i21,v2=>i22,v3=>i23,
	cc0=>j30,cc1=>j31,cc2=>j32,cc3=>j33,
	uu00=>j10,uu01=>j11,uu02=>j12,uu03=>j13,
	uu10=>j00,uu11=>j01,uu12=>j02,uu13=>j03,
	vv0=>j20,vv1=>j21,vv2=>j22,vv3=>j23
	);		  
	rop7 : r_operation generic map(shift=>13) 	
	port map(clk=>clk,	 bx=>obx5, obx=>obx6,	 
	c0=>j00,c1=>j01,c2=>j02,c3=>j03,
	u00=>j20,u01=>j21,u02=>j22,u03=>j23,
	u10=>j10,u11=>j11,u12=>j12,u13=>j13,
	v0=>j30,v1=>j31,v2=>j32,v3=>j33,
	cc0=>k00,cc1=>k01,cc2=>k02,cc3=>k03,
	uu00=>k20,uu01=>k21,uu02=>k22,uu03=>k23,
	uu10=>k10,uu11=>k11,uu12=>k12,uu13=>k13,
	vv0=>k30,vv1=>k31,vv2=>k32,vv3=>k33
	);			 
	rop8 : r_operation generic map(shift=>18)
	port map(	clk=>clk, bx=>obx6, obx=>obx,		
	c0=>k10,c1=>k11,c2=>k12,c3=>k13,
	u00=>k30,u01=>k31,u02=>k32,u03=>k33,
	u10=>k20,u11=>k21,u12=>k22,u13=>k23,
	v0=>k00,v1=>k01,v2=>k02,v3=>k03,
	cc0=>v11,cc1=>v12,cc2=>v13,cc3=>v10,
	uu00=>v33,uu01=>v30,uu02=>v31,uu03=>v32,
	uu10=>v22,uu11=>v23,uu12=>v20,uu13=>v21,
	vv0=>v00,vv1=>v01,vv2=>v02,vv3=>v03
	);
end rtl;


library ieee;
use ieee.std_logic_1164.all;
entity xorsalsa8 is	   
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
end;

architecture rtl of xorsalsa8 is	
component input 
	port(
	clk		: in std_logic;
	bx			: in std_logic;
	
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
	
	c0		: out std_logic_vector(31 downto 0);
	c1		: out std_logic_vector(31 downto 0);
	c2		: out std_logic_vector(31 downto 0);
	c3		: out std_logic_vector(31 downto 0);
	c4		: out std_logic_vector(31 downto 0);
	c5		: out std_logic_vector(31 downto 0);
	c6		: out std_logic_vector(31 downto 0);
	c7		: out std_logic_vector(31 downto 0);
	c8		: out std_logic_vector(31 downto 0);
	c9		: out std_logic_vector(31 downto 0);
	ca		: out std_logic_vector(31 downto 0);
	cb		: out std_logic_vector(31 downto 0);
	cc		: out std_logic_vector(31 downto 0);
	cd		: out std_logic_vector(31 downto 0);
	ce		: out std_logic_vector(31 downto 0);
	cf		: out std_logic_vector(31 downto 0);
	
	u00		: out std_logic_vector(31 downto 0);
	u01		: out std_logic_vector(31 downto 0);
	u02		: out std_logic_vector(31 downto 0);
	u03		: out std_logic_vector(31 downto 0);

	u10		: out std_logic_vector(31 downto 0);
	u11		: out std_logic_vector(31 downto 0);
	u12		: out std_logic_vector(31 downto 0);
	u13		: out std_logic_vector(31 downto 0);

	u20		: out std_logic_vector(31 downto 0);
	u21		: out std_logic_vector(31 downto 0);
	u22		: out std_logic_vector(31 downto 0);
	u23		: out std_logic_vector(31 downto 0);

	u30		: out std_logic_vector(31 downto 0);
	u31		: out std_logic_vector(31 downto 0);
	u32		: out std_logic_vector(31 downto 0);
	u33		: out std_logic_vector(31 downto 0);
	
	obx		: out std_logic
	);
end component;			  

component output 
	port(			
	clk		: in std_logic;
	bx			: in std_logic;
	
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
	
	u00		: in std_logic_vector(31 downto 0);
	u01		: in std_logic_vector(31 downto 0);
	u02		: in std_logic_vector(31 downto 0);
	u03		: in std_logic_vector(31 downto 0);

	u10		: in std_logic_vector(31 downto 0);
	u11		: in std_logic_vector(31 downto 0);
	u12		: in std_logic_vector(31 downto 0);
	u13		: in std_logic_vector(31 downto 0);		   
	
	u20		: in std_logic_vector(31 downto 0);
	u21		: in std_logic_vector(31 downto 0);
	u22		: in std_logic_vector(31 downto 0);
	u23		: in std_logic_vector(31 downto 0);

	u30		: in std_logic_vector(31 downto 0);
	u31		: in std_logic_vector(31 downto 0);
	u32		: in std_logic_vector(31 downto 0);
	u33		: in std_logic_vector(31 downto 0);
	
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
	
	rdy		: out std_logic
	);
end component;

component delay  
	port(
	clk		: in std_logic;
	bx			: in std_logic;					
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
	df			: out std_logic_vector(31 downto 0)
	);
end component;			  

component stage 
	port(		
	clk		: in std_logic;
	bx			: in std_logic;	 
	
	u00		: in std_logic_vector(31 downto 0);
	u01		: in std_logic_vector(31 downto 0);
	u02		: in std_logic_vector(31 downto 0);
	u03		: in std_logic_vector(31 downto 0);

	u10		: in std_logic_vector(31 downto 0);
	u11		: in std_logic_vector(31 downto 0);
	u12		: in std_logic_vector(31 downto 0);
	u13		: in std_logic_vector(31 downto 0);		   
	
	u20		: in std_logic_vector(31 downto 0);
	u21		: in std_logic_vector(31 downto 0);
	u22		: in std_logic_vector(31 downto 0);
	u23		: in std_logic_vector(31 downto 0);

	u30		: in std_logic_vector(31 downto 0);
	u31		: in std_logic_vector(31 downto 0);
	u32		: in std_logic_vector(31 downto 0);
	u33		: in std_logic_vector(31 downto 0);


	v00		: out std_logic_vector(31 downto 0);
	v01		: out std_logic_vector(31 downto 0);
	v02		: out std_logic_vector(31 downto 0);
	v03		: out std_logic_vector(31 downto 0);

	v10		: out std_logic_vector(31 downto 0);
	v11		: out std_logic_vector(31 downto 0);
	v12		: out std_logic_vector(31 downto 0);
	v13		: out std_logic_vector(31 downto 0);		   
	
	v20		: out std_logic_vector(31 downto 0);
	v21		: out std_logic_vector(31 downto 0);
	v22		: out std_logic_vector(31 downto 0);
	v23		: out std_logic_vector(31 downto 0);

	v30		: out std_logic_vector(31 downto 0);
	v31		: out std_logic_vector(31 downto 0);
	v32		: out std_logic_vector(31 downto 0);
	v33		: out std_logic_vector(31 downto 0);
	
	obx		: out std_logic
	);
end component;				   
	signal obx0, obx1, obx2, obx3, obx4 : std_logic;
	signal irdy : std_logic;
	signal c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,ca,cb,cc,cd,ce,cf : std_logic_vector(31 downto 0);	
	signal u00,u01,u02,u03,u10,u11,u12,u13,u20,u21,u22,u23,u30,u31,u32,u33 : std_logic_vector(31 downto 0);		  
	signal e0,e1,e2,e3,e4,e5,e6,e7,e8,e9,ea,eb,ec,ed,ee,ef : std_logic_vector(31 downto 0);	 

	signal f00,f01,f02,f03,f10,f11,f12,f13,f20,f21,f22,f23,f30,f31,f32,f33 : std_logic_vector(31 downto 0);	   
	signal g00,g01,g02,g03,g10,g11,g12,g13,g20,g21,g22,g23,g30,g31,g32,g33 : std_logic_vector(31 downto 0);	   
	signal h00,h01,h02,h03,h10,h11,h12,h13,h20,h21,h22,h23,h30,h31,h32,h33 : std_logic_vector(31 downto 0);		 
	signal i00,i01,i02,i03,i10,i11,i12,i13,i20,i21,i22,i23,i30,i31,i32,i33 : std_logic_vector(31 downto 0);	   

begin
	
	inp : input
	port map(clk=>clk, bx=>bx, obx=>obx0,
	b0=>b0,b1=>b1,b2=>b2,b3=>b3,b4=>b4,b5=>b5,b6=>b6,b7=>b7,
	b8=>b8,b9=>b9,ba=>ba,bb=>bb,bc=>bc,bd=>bd,be=>be,bf=>bf,	  
	c0=>c0,c1=>c1,c2=>c2,c3=>c3,c4=>c4,c5=>c5,c6=>c6,c7=>c7,
	c8=>c8,c9=>c9,ca=>ca,cb=>cb,cc=>cc,cd=>cd,ce=>ce,cf=>cf,
	u00=>u00,u01=>u01,u02=>u02,u03=>u03,u10=>u10,u11=>u11,u12=>u12,u13=>u13,
	u20=>u20,u21=>u21,u22=>u22,u23=>u23,u30=>u30,u31=>u31,u32=>u32,u33=>u33
	);
	dl : delay 
	port map(clk=>clk, bx=>obx0, 
	b0=>c0,b1=>c1,b2=>c2,b3=>c3,b4=>c4,b5=>c5,b6=>c6,b7=>c7,
	b8=>c8,b9=>c9,ba=>ca,bb=>cb,bc=>cc,bd=>cd,be=>ce,bf=>cf,
	d0=>e0,d1=>e1,d2=>e2,d3=>e3,d4=>e4,d5=>e5,d6=>e6,d7=>e7,
	d8=>e8,d9=>e9,da=>ea,db=>eb,dc=>ec,dd=>ed,de=>ee,df=>ef
	);
	st1 : stage
	port map(clk=>clk, bx=>obx0,	obx=>obx1,		
	u00=>u00,u01=>u01,u02=>u02,u03=>u03,u10=>u10,u11=>u11,u12=>u12,u13=>u13,
	u20=>u20,u21=>u21,u22=>u22,u23=>u23,u30=>u30,u31=>u31,u32=>u32,u33=>u33,
	v00=>f00,v01=>f01,v02=>f02,v03=>f03,v10=>f10,v11=>f11,v12=>f12,v13=>f13,
	v20=>f20,v21=>f21,v22=>f22,v23=>f23,v30=>f30,v31=>f31,v32=>f32,v33=>f33
	);
	st2 : stage
	port map(clk=>clk, bx=>obx1, obx=>obx2,	   	
	u00=>f00,u01=>f01,u02=>f02,u03=>f03,u10=>f10,u11=>f11,u12=>f12,u13=>f13,
	u20=>f20,u21=>f21,u22=>f22,u23=>f23,u30=>f30,u31=>f31,u32=>f32,u33=>f33,
	v00=>g00,v01=>g01,v02=>g02,v03=>g03,v10=>g10,v11=>g11,v12=>g12,v13=>g13,
	v20=>g20,v21=>g21,v22=>g22,v23=>g23,v30=>g30,v31=>g31,v32=>g32,v33=>g33
	);		  
	st3 : stage
	port map(clk=>clk, bx=>obx2, obx=>obx3,
	u00=>g00,u01=>g01,u02=>g02,u03=>g03,u10=>g10,u11=>g11,u12=>g12,u13=>g13,
	u20=>g20,u21=>g21,u22=>g22,u23=>g23,u30=>g30,u31=>g31,u32=>g32,u33=>g33,
	v00=>h00,v01=>h01,v02=>h02,v03=>h03,v10=>h10,v11=>h11,v12=>h12,v13=>h13,
	v20=>h20,v21=>h21,v22=>h22,v23=>h23,v30=>h30,v31=>h31,v32=>h32,v33=>h33
	);
	st4 : stage
	port map(clk=>clk, bx=>obx3, obx=>obx4,
	u00=>h00,u01=>h01,u02=>h02,u03=>h03,u10=>h10,u11=>h11,u12=>h12,u13=>h13,
	u20=>h20,u21=>h21,u22=>h22,u23=>h23,u30=>h30,u31=>h31,u32=>h32,u33=>h33,
	v00=>i00,v01=>i01,v02=>i02,v03=>i03,v10=>i10,v11=>i11,v12=>i12,v13=>i13,
	v20=>i20,v21=>i21,v22=>i22,v23=>i23,v30=>i30,v31=>i31,v32=>i32,v33=>i33
	);
	outp : output
	port map(clk=>clk, bx=>obx4, rdy=>rdy,
	u00=>i00,u01=>i01,u02=>i02,u03=>i03,u10=>i10,u11=>i11,u12=>i12,u13=>i13,
	u20=>i20,u21=>i21,u22=>i22,u23=>i23,u30=>i30,u31=>i31,u32=>i32,u33=>i33,
	b0=>e0,b1=>e1,b2=>e2,b3=>e3,b4=>e4,b5=>e5,b6=>e6,b7=>e7,
	b8=>e8,b9=>e9,ba=>ea,bb=>eb,bc=>ec,bd=>cd,be=>ee,bf=>ef,
	d0=>d0,d1=>d1,d2=>d2,d3=>d3,d4=>d4,d5=>d5,d6=>d6,d7=>d7,
	d8=>d8,d9=>d9,da=>da,db=>db,dc=>dc,dd=>dd,de=>de,df=>df
	);
end rtl;
