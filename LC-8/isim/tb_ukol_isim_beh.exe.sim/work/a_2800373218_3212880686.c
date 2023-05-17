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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/vofy/Downloads/uloha8-nove/citac.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_970019341842465249_3965413181(char *, char *, char *, int );


static void work_a_2800373218_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 992U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 4048);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t5 = (t0 + 1832U);
    t12 = *((char **)t5);
    t5 = (t0 + 4176);
    t13 = (t5 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    t5 = (t0 + 1192U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t2 = t8;
    goto LAB10;

}

static void work_a_2800373218_3212880686_p_1(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6208U);
    t3 = ieee_p_3620187407_sub_970019341842465249_3965413181(IEEE_P_3620187407, t2, t1, 9);
    if (t3 != 0)
        goto LAB3;

LAB4:
LAB5:    t12 = (t0 + 1672U);
    t13 = *((char **)t12);
    t12 = (t0 + 6208U);
    t14 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t11, t13, t12, 1);
    t15 = (t11 + 12U);
    t16 = *((unsigned int *)t15);
    t17 = (1U * t16);
    t18 = (4U != t17);
    if (t18 == 1)
        goto LAB7;

LAB8:    t19 = (t0 + 4240);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t14, 4U);
    xsi_driver_first_trans_fast(t19);

LAB2:    t24 = (t0 + 4064);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 6242);
    t6 = (t0 + 4240);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(4U, t17, 0);
    goto LAB8;

}

static void work_a_2800373218_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4304);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4080);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2800373218_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6208U);
    t4 = ieee_p_3620187407_sub_970019341842465249_3965413181(IEEE_P_3620187407, t3, t2, 0);
    if (t4 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 4368);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 4096);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t5 = (t0 + 4368);
    t9 = (t5 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB2;

LAB5:    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_2800373218_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2800373218_3212880686_p_0,(void *)work_a_2800373218_3212880686_p_1,(void *)work_a_2800373218_3212880686_p_2,(void *)work_a_2800373218_3212880686_p_3};
	xsi_register_didat("work_a_2800373218_3212880686", "isim/tb_ukol_isim_beh.exe.sim/work/a_2800373218_3212880686.didat");
	xsi_register_executes(pe);
}
