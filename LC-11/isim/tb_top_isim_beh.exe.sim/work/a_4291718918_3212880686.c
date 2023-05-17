/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/BDIO/243511/uloha11/citac_intenzity.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );


static void work_a_4291718918_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3768);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t3 = (t0 + 3880);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 5936U);
    t4 = (t0 + 1968U);
    t5 = *((char **)t4);
    t4 = (t0 + 5952U);
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t5, t4);
    if (t2 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 5936U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 0);
    if (t2 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t6 = (t0 + 3944);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB6;

LAB8:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 3944);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

}

static void work_a_4291718918_3212880686_p_1(char *t0)
{
    char t5[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB7:    t18 = (t0 + 1512U);
    t19 = *((char **)t18);
    t18 = (t0 + 5936U);
    t20 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t17, t19, t18, 1);
    t21 = (t17 + 12U);
    t22 = *((unsigned int *)t21);
    t23 = (1U * t22);
    t24 = (4U != t23);
    if (t24 == 1)
        goto LAB9;

LAB10:    t25 = (t0 + 4008);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t20, 4U);
    xsi_driver_first_trans_fast(t25);

LAB2:    t30 = (t0 + 3784);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1512U);
    t6 = *((char **)t1);
    t1 = (t0 + 5936U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t5, t6, t1, 1);
    t8 = (t5 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    t11 = (4U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 4008);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t10, 0);
    goto LAB6;

LAB8:    goto LAB2;

LAB9:    xsi_size_not_matching(4U, t23, 0);
    goto LAB10;

}

static void work_a_4291718918_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3800);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4291718918_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4291718918_3212880686_p_0,(void *)work_a_4291718918_3212880686_p_1,(void *)work_a_4291718918_3212880686_p_2};
	xsi_register_didat("work_a_4291718918_3212880686", "isim/tb_top_isim_beh.exe.sim/work/a_4291718918_3212880686.didat");
	xsi_register_executes(pe);
}
