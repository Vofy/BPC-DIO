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
static const char *ng0 = "C:/BDIO/243511/uloha9/divider.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3926497698_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3968);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t3 = (t0 + 4080);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 19U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 4144);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 24U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_3926497698_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6224U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t1, t3, t2, 1);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (19U != t7);
    if (t8 == 1)
        goto LAB2;

LAB3:    t9 = (t0 + 4208);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 19U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6224U);
    t8 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t2, 499999);
    if (t8 != 0)
        goto LAB4;

LAB6:
LAB5:    t2 = (t0 + 3984);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(19U, t7, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(56, ng0);
    t4 = xsi_get_transient_memory(19U);
    memset(t4, 0, 19U);
    t5 = t4;
    memset(t5, (unsigned char)2, 19U);
    t9 = (t0 + 4208);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 19U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB5;

}

static void work_a_3926497698_3212880686_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 6240U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t1, t3, t2, 1);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (24U != t7);
    if (t8 == 1)
        goto LAB2;

LAB3:    t9 = (t0 + 4336);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 24U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4400);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 6240U);
    t8 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t2, 9999999);
    if (t8 != 0)
        goto LAB4;

LAB6:
LAB5:    t2 = (t0 + 4000);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(24U, t7, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(65, ng0);
    t4 = xsi_get_transient_memory(24U);
    memset(t4, 0, 24U);
    t5 = t4;
    memset(t5, (unsigned char)2, 24U);
    t9 = (t0 + 4336);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 24U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4400);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB5;

}


extern void work_a_3926497698_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3926497698_3212880686_p_0,(void *)work_a_3926497698_3212880686_p_1,(void *)work_a_3926497698_3212880686_p_2};
	xsi_register_didat("work_a_3926497698_3212880686", "isim/tb_uloha9_isim_beh.exe.sim/work/a_3926497698_3212880686.didat");
	xsi_register_executes(pe);
}
