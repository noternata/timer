/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_1624(char*, char *);
extern void execute_4245(char*, char *);
extern void execute_4246(char*, char *);
extern void execute_4247(char*, char *);
extern void execute_4248(char*, char *);
extern void execute_4249(char*, char *);
extern void execute_4250(char*, char *);
extern void execute_4251(char*, char *);
extern void execute_4(char*, char *);
extern void execute_1622(char*, char *);
extern void execute_1623(char*, char *);
extern void execute_4231(char*, char *);
extern void execute_4232(char*, char *);
extern void execute_4233(char*, char *);
extern void execute_4234(char*, char *);
extern void execute_4235(char*, char *);
extern void execute_4236(char*, char *);
extern void execute_4237(char*, char *);
extern void execute_4238(char*, char *);
extern void execute_4239(char*, char *);
extern void execute_4240(char*, char *);
extern void execute_4241(char*, char *);
extern void execute_4242(char*, char *);
extern void execute_4243(char*, char *);
extern void execute_4244(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_1629(char*, char *);
extern void execute_1630(char*, char *);
extern void execute_1631(char*, char *);
extern void execute_1632(char*, char *);
extern void execute_1633(char*, char *);
extern void execute_1636(char*, char *);
extern void execute_1637(char*, char *);
extern void execute_1638(char*, char *);
extern void execute_1639(char*, char *);
extern void execute_1640(char*, char *);
extern void execute_1641(char*, char *);
extern void execute_1634(char*, char *);
extern void execute_1635(char*, char *);
extern void execute_11(char*, char *);
extern void execute_12(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_75(char*, char *);
extern void execute_85(char*, char *);
extern void execute_1667(char*, char *);
extern void execute_1668(char*, char *);
extern void execute_1669(char*, char *);
extern void execute_1670(char*, char *);
extern void execute_1671(char*, char *);
extern void execute_1672(char*, char *);
extern void execute_1673(char*, char *);
extern void execute_1674(char*, char *);
extern void execute_1675(char*, char *);
extern void execute_1676(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_1666(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_1620(char*, char *);
extern void execute_1621(char*, char *);
extern void execute_4227(char*, char *);
extern void execute_4228(char*, char *);
extern void execute_4229(char*, char *);
extern void execute_4230(char*, char *);
extern void execute_1618(char*, char *);
extern void execute_1619(char*, char *);
extern void execute_4222(char*, char *);
extern void execute_4223(char*, char *);
extern void execute_4224(char*, char *);
extern void execute_4225(char*, char *);
extern void execute_4226(char*, char *);
extern void execute_89(char*, char *);
extern void execute_1617(char*, char *);
extern void execute_4207(char*, char *);
extern void execute_4208(char*, char *);
extern void execute_4209(char*, char *);
extern void execute_4210(char*, char *);
extern void execute_4211(char*, char *);
extern void execute_4212(char*, char *);
extern void execute_4213(char*, char *);
extern void execute_4214(char*, char *);
extern void execute_4215(char*, char *);
extern void execute_4216(char*, char *);
extern void execute_4217(char*, char *);
extern void execute_4218(char*, char *);
extern void execute_4219(char*, char *);
extern void execute_4220(char*, char *);
extern void execute_4221(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_94(char*, char *);
extern void execute_854(char*, char *);
extern void execute_2927(char*, char *);
extern void execute_2928(char*, char *);
extern void execute_2929(char*, char *);
extern void execute_2930(char*, char *);
extern void execute_2931(char*, char *);
extern void execute_2932(char*, char *);
extern void execute_2933(char*, char *);
extern void execute_2934(char*, char *);
extern void execute_2935(char*, char *);
extern void execute_2936(char*, char *);
extern void execute_2937(char*, char *);
extern void execute_2938(char*, char *);
extern void execute_2939(char*, char *);
extern void execute_2940(char*, char *);
extern void execute_2941(char*, char *);
extern void execute_99(char*, char *);
extern void execute_475(char*, char *);
extern void execute_2287(char*, char *);
extern void execute_2288(char*, char *);
extern void execute_2289(char*, char *);
extern void execute_2290(char*, char *);
extern void execute_2291(char*, char *);
extern void execute_2292(char*, char *);
extern void execute_2293(char*, char *);
extern void execute_2294(char*, char *);
extern void execute_2295(char*, char *);
extern void execute_2296(char*, char *);
extern void execute_2297(char*, char *);
extern void execute_2298(char*, char *);
extern void execute_2299(char*, char *);
extern void execute_2300(char*, char *);
extern void execute_2301(char*, char *);
extern void execute_104(char*, char *);
extern void execute_288(char*, char *);
extern void execute_1967(char*, char *);
extern void execute_1968(char*, char *);
extern void execute_1969(char*, char *);
extern void execute_1970(char*, char *);
extern void execute_1971(char*, char *);
extern void execute_1972(char*, char *);
extern void execute_1973(char*, char *);
extern void execute_1974(char*, char *);
extern void execute_1975(char*, char *);
extern void execute_1976(char*, char *);
extern void execute_1977(char*, char *);
extern void execute_1978(char*, char *);
extern void execute_1979(char*, char *);
extern void execute_1980(char*, char *);
extern void execute_1981(char*, char *);
extern void execute_109(char*, char *);
extern void execute_197(char*, char *);
extern void execute_1807(char*, char *);
extern void execute_1808(char*, char *);
extern void execute_1809(char*, char *);
extern void execute_1810(char*, char *);
extern void execute_1811(char*, char *);
extern void execute_1812(char*, char *);
extern void execute_1813(char*, char *);
extern void execute_1814(char*, char *);
extern void execute_1815(char*, char *);
extern void execute_1816(char*, char *);
extern void execute_1817(char*, char *);
extern void execute_1818(char*, char *);
extern void execute_1819(char*, char *);
extern void execute_1820(char*, char *);
extern void execute_1821(char*, char *);
extern void execute_114(char*, char *);
extern void execute_154(char*, char *);
extern void execute_1727(char*, char *);
extern void execute_1728(char*, char *);
extern void execute_1729(char*, char *);
extern void execute_1730(char*, char *);
extern void execute_1731(char*, char *);
extern void execute_1732(char*, char *);
extern void execute_1733(char*, char *);
extern void execute_1734(char*, char *);
extern void execute_1735(char*, char *);
extern void execute_1736(char*, char *);
extern void execute_1737(char*, char *);
extern void execute_1738(char*, char *);
extern void execute_1739(char*, char *);
extern void execute_1740(char*, char *);
extern void execute_1741(char*, char *);
extern void execute_119(char*, char *);
extern void execute_135(char*, char *);
extern void execute_1687(char*, char *);
extern void execute_1688(char*, char *);
extern void execute_1689(char*, char *);
extern void execute_1690(char*, char *);
extern void execute_1691(char*, char *);
extern void execute_1692(char*, char *);
extern void execute_1693(char*, char *);
extern void execute_1694(char*, char *);
extern void execute_1695(char*, char *);
extern void execute_1696(char*, char *);
extern void execute_1697(char*, char *);
extern void execute_1698(char*, char *);
extern void execute_1699(char*, char *);
extern void execute_1700(char*, char *);
extern void execute_1701(char*, char *);
extern void execute_124(char*, char *);
extern void execute_128(char*, char *);
extern void execute_1677(char*, char *);
extern void execute_1678(char*, char *);
extern void execute_1679(char*, char *);
extern void execute_1680(char*, char *);
extern void execute_1681(char*, char *);
extern void execute_1626(char*, char *);
extern void execute_1627(char*, char *);
extern void execute_1628(char*, char *);
extern void execute_4252(char*, char *);
extern void execute_4253(char*, char *);
extern void execute_4254(char*, char *);
extern void execute_4255(char*, char *);
extern void execute_4256(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[226] = {(funcp)execute_2, (funcp)execute_1624, (funcp)execute_4245, (funcp)execute_4246, (funcp)execute_4247, (funcp)execute_4248, (funcp)execute_4249, (funcp)execute_4250, (funcp)execute_4251, (funcp)execute_4, (funcp)execute_1622, (funcp)execute_1623, (funcp)execute_4231, (funcp)execute_4232, (funcp)execute_4233, (funcp)execute_4234, (funcp)execute_4235, (funcp)execute_4236, (funcp)execute_4237, (funcp)execute_4238, (funcp)execute_4239, (funcp)execute_4240, (funcp)execute_4241, (funcp)execute_4242, (funcp)execute_4243, (funcp)execute_4244, (funcp)execute_6, (funcp)execute_7, (funcp)execute_1629, (funcp)execute_1630, (funcp)execute_1631, (funcp)execute_1632, (funcp)execute_1633, (funcp)execute_1636, (funcp)execute_1637, (funcp)execute_1638, (funcp)execute_1639, (funcp)execute_1640, (funcp)execute_1641, (funcp)execute_1634, (funcp)execute_1635, (funcp)execute_11, (funcp)execute_12, (funcp)execute_17, (funcp)execute_18, (funcp)execute_20, (funcp)execute_21, (funcp)execute_23, (funcp)execute_24, (funcp)execute_69, (funcp)execute_70, (funcp)execute_72, (funcp)execute_73, (funcp)execute_75, (funcp)execute_85, (funcp)execute_1667, (funcp)execute_1668, (funcp)execute_1669, (funcp)execute_1670, (funcp)execute_1671, (funcp)execute_1672, (funcp)execute_1673, (funcp)execute_1674, (funcp)execute_1675, (funcp)execute_1676, (funcp)execute_77, (funcp)execute_78, (funcp)execute_80, (funcp)execute_81, (funcp)execute_1666, (funcp)execute_83, (funcp)execute_84, (funcp)execute_1620, (funcp)execute_1621, (funcp)execute_4227, (funcp)execute_4228, (funcp)execute_4229, (funcp)execute_4230, (funcp)execute_1618, (funcp)execute_1619, (funcp)execute_4222, (funcp)execute_4223, (funcp)execute_4224, (funcp)execute_4225, (funcp)execute_4226, (funcp)execute_89, (funcp)execute_1617, (funcp)execute_4207, (funcp)execute_4208, (funcp)execute_4209, (funcp)execute_4210, (funcp)execute_4211, (funcp)execute_4212, (funcp)execute_4213, (funcp)execute_4214, (funcp)execute_4215, (funcp)execute_4216, (funcp)execute_4217, (funcp)execute_4218, (funcp)execute_4219, (funcp)execute_4220, (funcp)execute_4221, (funcp)execute_91, (funcp)execute_92, (funcp)execute_94, (funcp)execute_854, (funcp)execute_2927, (funcp)execute_2928, (funcp)execute_2929, (funcp)execute_2930, (funcp)execute_2931, (funcp)execute_2932, (funcp)execute_2933, (funcp)execute_2934, (funcp)execute_2935, (funcp)execute_2936, (funcp)execute_2937, (funcp)execute_2938, (funcp)execute_2939, (funcp)execute_2940, (funcp)execute_2941, (funcp)execute_99, (funcp)execute_475, (funcp)execute_2287, (funcp)execute_2288, (funcp)execute_2289, (funcp)execute_2290, (funcp)execute_2291, (funcp)execute_2292, (funcp)execute_2293, (funcp)execute_2294, (funcp)execute_2295, (funcp)execute_2296, (funcp)execute_2297, (funcp)execute_2298, (funcp)execute_2299, (funcp)execute_2300, (funcp)execute_2301, (funcp)execute_104, (funcp)execute_288, (funcp)execute_1967, (funcp)execute_1968, (funcp)execute_1969, (funcp)execute_1970, (funcp)execute_1971, (funcp)execute_1972, (funcp)execute_1973, (funcp)execute_1974, (funcp)execute_1975, (funcp)execute_1976, (funcp)execute_1977, (funcp)execute_1978, (funcp)execute_1979, (funcp)execute_1980, (funcp)execute_1981, (funcp)execute_109, (funcp)execute_197, (funcp)execute_1807, (funcp)execute_1808, (funcp)execute_1809, (funcp)execute_1810, (funcp)execute_1811, (funcp)execute_1812, (funcp)execute_1813, (funcp)execute_1814, (funcp)execute_1815, (funcp)execute_1816, (funcp)execute_1817, (funcp)execute_1818, (funcp)execute_1819, (funcp)execute_1820, (funcp)execute_1821, (funcp)execute_114, (funcp)execute_154, (funcp)execute_1727, (funcp)execute_1728, (funcp)execute_1729, (funcp)execute_1730, (funcp)execute_1731, (funcp)execute_1732, (funcp)execute_1733, (funcp)execute_1734, (funcp)execute_1735, (funcp)execute_1736, (funcp)execute_1737, (funcp)execute_1738, (funcp)execute_1739, (funcp)execute_1740, (funcp)execute_1741, (funcp)execute_119, (funcp)execute_135, (funcp)execute_1687, (funcp)execute_1688, (funcp)execute_1689, (funcp)execute_1690, (funcp)execute_1691, (funcp)execute_1692, (funcp)execute_1693, (funcp)execute_1694, (funcp)execute_1695, (funcp)execute_1696, (funcp)execute_1697, (funcp)execute_1698, (funcp)execute_1699, (funcp)execute_1700, (funcp)execute_1701, (funcp)execute_124, (funcp)execute_128, (funcp)execute_1677, (funcp)execute_1678, (funcp)execute_1679, (funcp)execute_1680, (funcp)execute_1681, (funcp)execute_1626, (funcp)execute_1627, (funcp)execute_1628, (funcp)execute_4252, (funcp)execute_4253, (funcp)execute_4254, (funcp)execute_4255, (funcp)execute_4256, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_31, (funcp)transaction_37, (funcp)transaction_107, (funcp)transaction_112};
const int NumRelocateId= 226;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench_behav/xsim.reloc",  (void **)funcTab, 226);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testbench_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/testbench_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/testbench_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testbench_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testbench_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
