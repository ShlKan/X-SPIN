/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.3"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Using locations.  */
#define YYLSP_NEEDED 0



/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ASSERT = 258,
     PRINT = 259,
     PRINTM = 260,
     PREPROC = 261,
     C_CODE = 262,
     C_DECL = 263,
     C_EXPR = 264,
     C_STATE = 265,
     C_TRACK = 266,
     RUN = 267,
     LEN = 268,
     ENABLED = 269,
     SET_P = 270,
     GET_P = 271,
     EVAL = 272,
     PC_VAL = 273,
     TYPEDEF = 274,
     MTYPE = 275,
     INLINE = 276,
     RETURN = 277,
     LABEL = 278,
     OF = 279,
     GOTO = 280,
     BREAK = 281,
     ELSE = 282,
     SEMI = 283,
     ARROW = 284,
     IF = 285,
     FI = 286,
     DO = 287,
     OD = 288,
     FOR = 289,
     SELECT = 290,
     IN = 291,
     SEP = 292,
     DOTDOT = 293,
     ATOMIC = 294,
     NON_ATOMIC = 295,
     D_STEP = 296,
     UNLESS = 297,
     TIMEOUT = 298,
     NONPROGRESS = 299,
     ACTIVE = 300,
     PROCTYPE = 301,
     D_PROCTYPE = 302,
     HIDDEN = 303,
     SHOW = 304,
     ISLOCAL = 305,
     PRIORITY = 306,
     PROVIDED = 307,
     FULL = 308,
     EMPTY = 309,
     NFULL = 310,
     NEMPTY = 311,
     CONST = 312,
     TYPE = 313,
     XU = 314,
     NAME = 315,
     UNAME = 316,
     PNAME = 317,
     INAME = 318,
     STRING = 319,
     CLAIM = 320,
     TRACE = 321,
     INIT = 322,
     LTL = 323,
     ASGN = 324,
     R_RCV = 325,
     RCV = 326,
     O_SND = 327,
     SND = 328,
     EQUIV = 329,
     IMPLIES = 330,
     OR = 331,
     AND = 332,
     EVENTUALLY = 333,
     ALWAYS = 334,
     RELEASE = 335,
     WEAK_UNTIL = 336,
     UNTIL = 337,
     NEXT = 338,
     NE = 339,
     EQ = 340,
     LE = 341,
     GE = 342,
     LT = 343,
     GT = 344,
     RSHIFT = 345,
     LSHIFT = 346,
     DECR = 347,
     INCR = 348,
     NEG = 349,
     UMIN = 350,
     DOT = 351
   };
#endif
/* Tokens.  */
#define ASSERT 258
#define PRINT 259
#define PRINTM 260
#define PREPROC 261
#define C_CODE 262
#define C_DECL 263
#define C_EXPR 264
#define C_STATE 265
#define C_TRACK 266
#define RUN 267
#define LEN 268
#define ENABLED 269
#define SET_P 270
#define GET_P 271
#define EVAL 272
#define PC_VAL 273
#define TYPEDEF 274
#define MTYPE 275
#define INLINE 276
#define RETURN 277
#define LABEL 278
#define OF 279
#define GOTO 280
#define BREAK 281
#define ELSE 282
#define SEMI 283
#define ARROW 284
#define IF 285
#define FI 286
#define DO 287
#define OD 288
#define FOR 289
#define SELECT 290
#define IN 291
#define SEP 292
#define DOTDOT 293
#define ATOMIC 294
#define NON_ATOMIC 295
#define D_STEP 296
#define UNLESS 297
#define TIMEOUT 298
#define NONPROGRESS 299
#define ACTIVE 300
#define PROCTYPE 301
#define D_PROCTYPE 302
#define HIDDEN 303
#define SHOW 304
#define ISLOCAL 305
#define PRIORITY 306
#define PROVIDED 307
#define FULL 308
#define EMPTY 309
#define NFULL 310
#define NEMPTY 311
#define CONST 312
#define TYPE 313
#define XU 314
#define NAME 315
#define UNAME 316
#define PNAME 317
#define INAME 318
#define STRING 319
#define CLAIM 320
#define TRACE 321
#define INIT 322
#define LTL 323
#define ASGN 324
#define R_RCV 325
#define RCV 326
#define O_SND 327
#define SND 328
#define EQUIV 329
#define IMPLIES 330
#define OR 331
#define AND 332
#define EVENTUALLY 333
#define ALWAYS 334
#define RELEASE 335
#define WEAK_UNTIL 336
#define UNTIL 337
#define NEXT 338
#define NE 339
#define EQ 340
#define LE 341
#define GE 342
#define LT 343
#define GT 344
#define RSHIFT 345
#define LSHIFT 346
#define DECR 347
#define INCR 348
#define NEG 349
#define UMIN 350
#define DOT 351




/* Copy the first part of user declarations.  */
#line 12 "spin.y"

#include "spin.h"
#include <sys/types.h>
#ifndef PC
#include <unistd.h>
#endif
#include <stdarg.h>

#define YYMAXDEPTH	20000	/* default is 10000 */
#define YYDEBUG		0
#define Stop	nn(ZN,'@',ZN,ZN)
#define PART0	"place initialized declaration of "
#define PART1	"place initialized chan decl of "
#define PART2	" at start of proctype "

static	Lextok *ltl_to_string(Lextok *);

extern  Symbol	*context, *owner;
extern	Lextok *for_body(Lextok *, int);
extern	void for_setup(Lextok *, Lextok *, Lextok *);
extern	Lextok *for_index(Lextok *, Lextok *);
extern	Lextok *sel_index(Lextok *, Lextok *, Lextok *);
extern  void    keep_track_off(Lextok *);
extern	void	safe_break(void);
extern	void	restore_break(void);
extern  int	u_sync, u_async, dumptab, scope_level;
extern	int	initialization_ok;
extern	short	has_sorted, has_random, has_enabled, has_pcvalue, has_np, has_priority;
extern	short	has_code, has_state, has_ltl, has_io;
extern	void	count_runs(Lextok *);
extern	void	no_internals(Lextok *);
extern	void	any_runs(Lextok *);
extern	void	explain(int);
extern	void	ltl_list(char *, char *);
extern	void	validref(Lextok *, Lextok *);
extern  void	sanity_check(Lextok *);
extern	char	yytext[];

int	Mpars = 0;	/* max nr of message parameters  */
int	nclaims = 0;	/* nr of never claims */
int	ltl_mode = 0;	/* set when parsing an ltl formula */
int	Expand_Ok = 0, realread = 1, IArgs = 0, NamesNotAdded = 0;
int	in_for = 0, in_seq = 0, par_cnt = 0;
int	dont_simplify = 0;
char	*claimproc = (char *) 0;
char	*eventmap = (char *) 0;

static	char *ltl_name;
static	int  Embedded = 0, inEventMap = 0, has_ini = 0;



/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif

#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif



/* Copy the second part of user declarations.  */


/* Line 216 of yacc.c.  */
#line 350 "y.tab.c"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int i)
#else
static int
YYID (i)
    int i;
#endif
{
  return i;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss;
  YYSTYPE yyvs;
  };

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack)					\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack, Stack, yysize);				\
	Stack = &yyptr->Stack;						\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  48
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1991

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  116
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  105
/* YYNRULES -- Number of rules.  */
#define YYNRULES  274
/* YYNRULES -- Number of states.  */
#define YYNSTATES  523

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   351

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,    99,    86,     2,
     106,   107,    97,    95,   113,    96,   114,    98,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,   112,     2,
       2,     2,     2,     2,   115,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   108,     2,   109,    85,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   110,    84,   111,   102,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    87,
      88,    89,    90,    91,    92,    93,    94,   100,   101,   103,
     104,   105
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     5,     7,    10,    12,    14,    16,    18,
      20,    22,    24,    26,    28,    30,    32,    34,    36,    37,
      38,    50,    52,    54,    55,    57,    62,    67,    68,    73,
      74,    79,    84,    86,    87,    92,    93,    95,    96,    98,
      99,   103,   104,   111,   113,   115,   116,   123,   125,   127,
     131,   135,   140,   145,   147,   149,   151,   152,   153,   160,
     162,   166,   168,   171,   175,   179,   181,   182,   187,   188,
     190,   192,   194,   195,   197,   201,   205,   212,   214,   218,
     219,   221,   223,   227,   229,   233,   235,   239,   241,   247,
     251,   255,   263,   265,   269,   274,   279,   281,   283,   284,
     290,   291,   295,   296,   299,   301,   303,   304,   309,   314,
     315,   320,   321,   326,   327,   336,   337,   344,   353,   357,
     358,   363,   365,   368,   372,   377,   380,   382,   386,   389,
     392,   397,   398,   405,   410,   415,   418,   420,   421,   426,
     427,   434,   435,   442,   443,   448,   450,   452,   453,   460,
     461,   468,   469,   475,   476,   477,   485,   486,   487,   497,
     500,   502,   505,   506,   511,   512,   514,   516,   518,   520,
     523,   525,   527,   529,   532,   536,   540,   544,   548,   552,
     556,   560,   564,   568,   572,   576,   580,   584,   588,   592,
     596,   600,   604,   608,   612,   616,   620,   624,   628,   632,
     635,   638,   641,   649,   650,   658,   663,   668,   673,   674,
     681,   682,   689,   691,   693,   695,   697,   699,   704,   711,
     718,   722,   726,   728,   729,   732,   734,   736,   740,   744,
     748,   752,   756,   759,   762,   765,   767,   771,   775,   779,
     783,   787,   791,   795,   800,   805,   810,   815,   816,   821,
     824,   826,   828,   830,   832,   836,   840,   841,   843,   844,
     847,   849,   854,   856,   860,   862,   867,   869,   872,   874,
     878,   883,   887,   889,   892
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int16 yyrhs[] =
{
     117,     0,    -1,   118,    -1,   119,    -1,   118,   119,    -1,
     122,    -1,   127,    -1,   132,    -1,   129,    -1,   136,    -1,
     155,    -1,   138,    -1,   143,    -1,   141,    -1,   197,    -1,
       1,    -1,   106,    -1,   107,    -1,    -1,    -1,   126,   125,
      60,   123,   120,   157,   121,   124,   205,   210,   147,    -1,
      46,    -1,    47,    -1,    -1,    45,    -1,    45,   108,   200,
     109,    -1,    45,   108,    60,   109,    -1,    -1,    67,   128,
     205,   147,    -1,    -1,    68,   135,   130,   131,    -1,   110,
     206,   196,   111,    -1,     1,    -1,    -1,    65,   134,   133,
     147,    -1,    -1,    60,    -1,    -1,    60,    -1,    -1,    66,
     137,   147,    -1,    -1,    19,    60,   110,   139,   156,   111,
      -1,    60,    -1,    63,    -1,    -1,    21,   140,   120,   142,
     214,   121,    -1,   145,    -1,   144,    -1,    10,    64,    64,
      -1,    11,    64,    64,    -1,    10,    64,    64,    64,    -1,
      11,    64,    64,    64,    -1,     7,    -1,     8,    -1,     9,
      -1,    -1,    -1,   110,   148,   150,   196,   149,   111,    -1,
     151,    -1,   150,   198,   151,    -1,   155,    -1,    59,   158,
      -1,    60,   112,   155,    -1,    60,   112,    59,    -1,   170,
      -1,    -1,   170,    42,   152,   170,    -1,    -1,    48,    -1,
      49,    -1,    50,    -1,    -1,    69,    -1,   153,    58,   159,
      -1,   153,    61,   159,    -1,   153,    58,   154,   110,   220,
     111,    -1,   155,    -1,   155,    28,   156,    -1,    -1,   156,
      -1,   164,    -1,   164,   113,   158,    -1,   161,    -1,   161,
     113,   159,    -1,    57,    -1,    57,   113,   160,    -1,   163,
      -1,   163,    69,   110,   160,   111,    -1,   163,    69,   201,
      -1,   163,    69,   162,    -1,   108,   200,   109,    24,   110,
     212,   111,    -1,    60,    -1,    60,   112,    57,    -1,    60,
     108,   200,   109,    -1,    60,   108,    60,   109,    -1,   167,
      -1,    60,    -1,    -1,    60,   166,   108,   201,   109,    -1,
      -1,   165,   168,   169,    -1,    -1,   114,   167,    -1,   174,
      -1,   180,    -1,    -1,    34,   120,   172,   164,    -1,   110,
     150,   196,   111,    -1,    -1,   164,    71,   175,   219,    -1,
      -1,   164,    73,   176,   216,    -1,    -1,   171,   112,   201,
      38,   201,   121,   177,   173,    -1,    -1,   171,    36,   164,
     121,   178,   173,    -1,    35,   120,   164,   112,   201,    38,
     201,   121,    -1,    30,   193,    31,    -1,    -1,    32,   179,
     193,    33,    -1,    26,    -1,    25,    60,    -1,    60,   112,
     170,    -1,    60,   115,   112,   170,    -1,    60,   112,    -1,
       1,    -1,   164,    69,   206,    -1,   164,   101,    -1,   164,
     100,    -1,    15,   120,   213,   121,    -1,    -1,     4,   120,
      64,   181,   215,   121,    -1,     5,   120,   164,   121,    -1,
       5,   120,    57,   121,    -1,     3,   206,    -1,   145,    -1,
      -1,   164,    70,   182,   219,    -1,    -1,   164,    71,   183,
      91,   219,    92,    -1,    -1,   164,    70,   184,    91,   219,
      92,    -1,    -1,   164,    72,   185,   216,    -1,   206,    -1,
      27,    -1,    -1,    39,   110,   186,   150,   196,   111,    -1,
      -1,    41,   110,   187,   150,   196,   111,    -1,    -1,   110,
     188,   150,   196,   111,    -1,    -1,    -1,    63,   189,   120,
     214,   121,   190,   180,    -1,    -1,    -1,   164,    69,    63,
     191,   120,   214,   121,   192,   180,    -1,    22,   206,    -1,
     194,    -1,   194,   193,    -1,    -1,    37,   195,   150,   196,
      -1,    -1,   197,    -1,    28,    -1,    29,    -1,   197,    -1,
     198,   197,    -1,    60,    -1,    62,    -1,    57,    -1,    96,
     200,    -1,   120,   200,   121,    -1,   200,    95,   200,    -1,
     200,    96,   200,    -1,   200,    97,   200,    -1,   200,    98,
     200,    -1,   200,    99,   200,    -1,   120,   201,   121,    -1,
     201,    95,   201,    -1,   201,    96,   201,    -1,   201,    97,
     201,    -1,   201,    98,   201,    -1,   201,    99,   201,    -1,
     201,    86,   201,    -1,   201,    85,   201,    -1,   201,    84,
     201,    -1,   201,    92,   201,    -1,   201,    91,   201,    -1,
     201,    90,   201,    -1,   201,    89,   201,    -1,   201,    88,
     201,    -1,   201,    87,   201,    -1,   201,    77,   201,    -1,
     201,    76,   201,    -1,   201,    94,   201,    -1,   201,    93,
     201,    -1,   102,   201,    -1,    96,   201,    -1,    73,   201,
      -1,   120,   201,    29,   201,   112,   201,   121,    -1,    -1,
      12,   199,   202,   120,   214,   121,   205,    -1,    13,   120,
     164,   121,    -1,    14,   120,   201,   121,    -1,    16,   120,
     201,   121,    -1,    -1,   164,    71,   203,   108,   219,   109,
      -1,    -1,   164,    70,   204,   108,   219,   109,    -1,   164,
      -1,   146,    -1,    57,    -1,    43,    -1,    44,    -1,    18,
     120,   201,   121,    -1,    62,   108,   201,   109,   115,    60,
      -1,    62,   108,   201,   109,   112,   165,    -1,    62,   115,
      60,    -1,    62,   112,   165,    -1,   207,    -1,    -1,    51,
      57,    -1,   201,    -1,   208,    -1,   201,    82,   201,    -1,
     201,    80,   201,    -1,   201,    81,   201,    -1,   201,    75,
     201,    -1,   201,    74,   201,    -1,    83,   201,    -1,    79,
     201,    -1,    78,   201,    -1,   209,    -1,   120,   208,   121,
      -1,   208,    77,   208,    -1,   208,    77,   201,    -1,   201,
      77,   208,    -1,   208,    76,   208,    -1,   208,    76,   201,
      -1,   201,    76,   208,    -1,    53,   120,   164,   121,    -1,
      55,   120,   164,   121,    -1,    54,   120,   164,   121,    -1,
      56,   120,   164,   121,    -1,    -1,    52,   120,   206,   121,
      -1,    52,     1,    -1,    58,    -1,    61,    -1,     1,    -1,
     211,    -1,   211,   113,   212,    -1,   201,   113,   201,    -1,
      -1,   217,    -1,    -1,   113,   217,    -1,   217,    -1,   201,
     120,   217,   121,    -1,   201,    -1,   201,   113,   217,    -1,
     164,    -1,    17,   120,   201,   121,    -1,    57,    -1,    96,
      57,    -1,   218,    -1,   218,   113,   219,    -1,   218,   120,
     219,   121,    -1,   120,   219,   121,    -1,    60,    -1,   220,
      60,    -1,   220,   113,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   103,   103,   106,   107,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   123,   126,   131,   139,
     130,   167,   168,   171,   172,   173,   178,   192,   192,   202,
     202,   208,   209,   212,   212,   227,   233,   236,   242,   245,
     245,   262,   262,   275,   276,   282,   282,   288,   292,   295,
     299,   303,   307,   313,   323,   335,   348,   349,   348,   358,
     359,   362,   363,   364,   365,   366,   367,   367,   373,   374,
     375,   376,   379,   380,   383,   386,   389,   401,   402,   406,
     407,   410,   411,   414,   415,   418,   419,   422,   435,   448,
     465,   473,   488,   489,   497,   498,   515,   518,   524,   524,
     528,   528,   545,   546,   549,   550,   555,   555,   562,   564,
     564,   569,   569,   575,   575,   580,   580,   584,   588,   594,
     594,   601,   604,   612,   621,   631,   641,   646,   651,   659,
     667,   668,   668,   670,   671,   672,   673,   674,   674,   680,
     680,   686,   686,   692,   692,   699,   700,   702,   702,   709,
     709,   719,   719,   725,   726,   725,   732,   733,   732,   738,
     741,   742,   745,   745,   753,   754,   757,   758,   761,   762,
     765,   766,   769,   770,   771,   772,   773,   774,   775,   776,
     779,   780,   781,   782,   783,   784,   785,   786,   787,   788,
     789,   790,   791,   792,   793,   794,   795,   796,   797,   798,
     799,   800,   802,   807,   807,   818,   819,   820,   821,   821,
     825,   825,   830,   831,   832,   836,   837,   840,   843,   845,
     847,   848,   849,   852,   853,   856,   857,   860,   861,   862,
     865,   869,   870,   871,   872,   876,   877,   878,   879,   880,
     881,   882,   883,   886,   887,   888,   889,   892,   893,   900,
     906,   911,   914,   917,   918,   921,   924,   925,   928,   929,
     932,   933,   940,   945,   952,   954,   956,   960,   965,   970,
     975,   980,   983,   985,   988
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "ASSERT", "PRINT", "PRINTM", "PREPROC",
  "C_CODE", "C_DECL", "C_EXPR", "C_STATE", "C_TRACK", "RUN", "LEN",
  "ENABLED", "SET_P", "GET_P", "EVAL", "PC_VAL", "TYPEDEF", "MTYPE",
  "INLINE", "RETURN", "LABEL", "OF", "GOTO", "BREAK", "ELSE", "SEMI",
  "ARROW", "IF", "FI", "DO", "OD", "FOR", "SELECT", "IN", "SEP", "DOTDOT",
  "ATOMIC", "NON_ATOMIC", "D_STEP", "UNLESS", "TIMEOUT", "NONPROGRESS",
  "ACTIVE", "PROCTYPE", "D_PROCTYPE", "HIDDEN", "SHOW", "ISLOCAL",
  "PRIORITY", "PROVIDED", "FULL", "EMPTY", "NFULL", "NEMPTY", "CONST",
  "TYPE", "XU", "NAME", "UNAME", "PNAME", "INAME", "STRING", "CLAIM",
  "TRACE", "INIT", "LTL", "ASGN", "R_RCV", "RCV", "O_SND", "SND", "EQUIV",
  "IMPLIES", "OR", "AND", "EVENTUALLY", "ALWAYS", "RELEASE", "WEAK_UNTIL",
  "UNTIL", "NEXT", "'|'", "'^'", "'&'", "NE", "EQ", "LE", "GE", "LT", "GT",
  "RSHIFT", "LSHIFT", "'+'", "'-'", "'*'", "'/'", "'%'", "DECR", "INCR",
  "'~'", "NEG", "UMIN", "DOT", "'('", "')'", "'['", "']'", "'{'", "'}'",
  "':'", "','", "'.'", "'@'", "$accept", "program", "units", "unit",
  "l_par", "r_par", "proc", "@1", "@2", "proctype", "inst", "init", "@3",
  "ltl", "@4", "ltl_body", "claim", "@5", "optname", "optname2", "events",
  "@6", "utype", "@7", "nm", "ns", "@8", "c_fcts", "cstate", "ccode",
  "cexpr", "body", "@9", "@10", "sequence", "step", "@11", "vis", "asgn",
  "one_decl", "decl_lst", "decl", "vref_lst", "var_list", "c_list", "ivar",
  "ch_init", "vardcl", "varref", "pfld", "@12", "cmpnd", "@13", "sfld",
  "stmnt", "for_pre", "@14", "for_post", "Special", "@15", "@16", "@17",
  "@18", "@19", "Stmnt", "@20", "@21", "@22", "@23", "@24", "@25", "@26",
  "@27", "@28", "@29", "@30", "@31", "options", "option", "@32", "OS",
  "semi", "MS", "aname", "const_expr", "expr", "@33", "@34", "@35",
  "Opt_priority", "full_expr", "ltl_expr", "Expr", "Probe", "Opt_enabler",
  "basetype", "typ_list", "two_args", "args", "prargs", "margs", "arg",
  "rarg", "rargs", "nlst", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,   330,   331,   332,   333,   334,
     335,   336,   337,   338,   124,    94,    38,   339,   340,   341,
     342,   343,   344,   345,   346,    43,    45,    42,    47,    37,
     347,   348,   126,   349,   350,   351,    40,    41,    91,    93,
     123,   125,    58,    44,    46,    64
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,   116,   117,   118,   118,   119,   119,   119,   119,   119,
     119,   119,   119,   119,   119,   119,   120,   121,   123,   124,
     122,   125,   125,   126,   126,   126,   126,   128,   127,   130,
     129,   131,   131,   133,   132,   134,   134,   135,   135,   137,
     136,   139,   138,   140,   140,   142,   141,   143,   143,   144,
     144,   144,   144,   145,   145,   146,   148,   149,   147,   150,
     150,   151,   151,   151,   151,   151,   152,   151,   153,   153,
     153,   153,   154,   154,   155,   155,   155,   156,   156,   157,
     157,   158,   158,   159,   159,   160,   160,   161,   161,   161,
     161,   162,   163,   163,   163,   163,   164,   165,   166,   165,
     168,   167,   169,   169,   170,   170,   172,   171,   173,   175,
     174,   176,   174,   177,   174,   178,   174,   174,   174,   179,
     174,   174,   174,   174,   174,   174,   174,   180,   180,   180,
     180,   181,   180,   180,   180,   180,   180,   182,   180,   183,
     180,   184,   180,   185,   180,   180,   180,   186,   180,   187,
     180,   188,   180,   189,   190,   180,   191,   192,   180,   180,
     193,   193,   195,   194,   196,   196,   197,   197,   198,   198,
     199,   199,   200,   200,   200,   200,   200,   200,   200,   200,
     201,   201,   201,   201,   201,   201,   201,   201,   201,   201,
     201,   201,   201,   201,   201,   201,   201,   201,   201,   201,
     201,   201,   201,   202,   201,   201,   201,   201,   203,   201,
     204,   201,   201,   201,   201,   201,   201,   201,   201,   201,
     201,   201,   201,   205,   205,   206,   206,   207,   207,   207,
     207,   207,   207,   207,   207,   208,   208,   208,   208,   208,
     208,   208,   208,   209,   209,   209,   209,   210,   210,   210,
     211,   211,   211,   212,   212,   213,   214,   214,   215,   215,
     216,   216,   217,   217,   218,   218,   218,   218,   219,   219,
     219,   219,   220,   220,   220
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     0,     0,
      11,     1,     1,     0,     1,     4,     4,     0,     4,     0,
       4,     4,     1,     0,     4,     0,     1,     0,     1,     0,
       3,     0,     6,     1,     1,     0,     6,     1,     1,     3,
       3,     4,     4,     1,     1,     1,     0,     0,     6,     1,
       3,     1,     2,     3,     3,     1,     0,     4,     0,     1,
       1,     1,     0,     1,     3,     3,     6,     1,     3,     0,
       1,     1,     3,     1,     3,     1,     3,     1,     5,     3,
       3,     7,     1,     3,     4,     4,     1,     1,     0,     5,
       0,     3,     0,     2,     1,     1,     0,     4,     4,     0,
       4,     0,     4,     0,     8,     0,     6,     8,     3,     0,
       4,     1,     2,     3,     4,     2,     1,     3,     2,     2,
       4,     0,     6,     4,     4,     2,     1,     0,     4,     0,
       6,     0,     6,     0,     4,     1,     1,     0,     6,     0,
       6,     0,     5,     0,     0,     7,     0,     0,     9,     2,
       1,     2,     0,     4,     0,     1,     1,     1,     1,     2,
       1,     1,     1,     2,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     2,
       2,     2,     7,     0,     7,     4,     4,     4,     0,     6,
       0,     6,     1,     1,     1,     1,     1,     4,     6,     6,
       3,     3,     1,     0,     2,     1,     1,     3,     3,     3,
       3,     3,     2,     2,     2,     1,     3,     3,     3,     3,
       3,     3,     3,     4,     4,     4,     4,     0,     4,     2,
       1,     1,     1,     1,     3,     3,     0,     1,     0,     2,
       1,     4,     1,     3,     1,     4,     1,     2,     1,     3,
       4,     3,     1,     2,     2
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
       0,    15,    53,    54,     0,     0,     0,     0,   166,   167,
      24,    69,    70,    71,    35,    39,    27,    37,     0,     0,
       3,     5,     0,     6,     8,     7,     9,    11,    13,    12,
      48,    47,     0,    10,    14,     0,     0,     0,    43,    44,
       0,     0,    36,    33,     0,   223,    38,    29,     1,     4,
      21,    22,     0,    72,     0,    49,    50,    41,    16,    45,
     172,     0,     0,     0,     0,     0,    56,    40,     0,     0,
       0,    18,    92,    73,     0,    74,    83,    87,    75,    51,
      52,    68,   256,    26,   173,     0,     0,     0,     0,     0,
       0,    25,    34,     0,   224,    28,    32,     0,    30,     0,
       0,     0,     0,     0,     0,    77,     0,    55,     0,     0,
       0,     0,     0,   215,   216,   214,    97,     0,     0,     0,
       0,     0,     0,     0,     0,   213,   212,   100,    96,   262,
     222,     0,   257,    17,   174,   175,   176,   177,   178,   179,
     126,     0,     0,     0,     0,     0,     0,   121,   146,     0,
     119,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      97,   153,   151,     0,   136,   164,    59,    61,   212,    65,
       0,   104,   105,   225,   145,   226,   235,   164,    68,     0,
       0,    93,   272,     0,    84,     0,     0,    90,    89,    68,
      42,   170,   171,   203,     0,     0,     0,     0,     0,     0,
       0,     0,   201,   234,   233,   232,   200,   199,     0,   210,
     208,   102,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    46,   135,     0,     0,
       0,   159,   122,   162,     0,   160,     0,   106,     0,   147,
     149,     0,     0,     0,     0,    62,    81,     0,     0,     0,
       0,     0,     0,    57,   168,     0,     0,   137,   109,   143,
     111,   129,   128,    66,     0,     0,     0,     0,     0,     0,
       0,   165,    80,     0,    95,    94,   273,    76,   274,     0,
      85,     0,    78,     0,     0,     0,     0,     0,     0,     0,
     221,   220,     0,   180,     0,     0,     0,   101,   231,   230,
     196,   195,   228,   229,   227,   188,   187,   186,   194,   193,
     192,   191,   190,   189,   198,   197,   181,   182,   183,   184,
     185,   263,   131,     0,     0,     0,     0,     0,   118,   161,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      64,    97,    63,   123,     0,   256,   164,   236,     0,    60,
     169,   156,   127,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   196,   242,   195,   239,   241,   240,   238,   237,
      31,    19,     0,     0,    88,   256,   205,   206,   207,   217,
       0,     0,     0,     0,     0,   103,   258,   134,   133,     0,
     130,   164,   120,   107,     0,   164,   164,   243,   245,   244,
     246,    82,     0,   124,     0,     0,    58,     0,     0,   266,
       0,     0,   264,   268,   138,     0,   110,     0,   262,   144,
     260,   112,    67,   115,     0,   223,     0,    86,     0,    99,
       0,     0,     0,     0,     0,     0,     0,   255,   163,     0,
       0,     0,   154,   152,   256,     0,   267,     0,     0,     0,
       0,     0,     0,     0,     0,   247,     0,   223,   219,   218,
       0,   211,   209,   259,   132,     0,   148,   150,     0,     0,
       0,   271,   269,     0,   142,   140,     0,     0,   116,   113,
       0,     0,   252,   250,   251,   253,     0,   204,   202,     0,
     212,   155,   157,   265,   270,   261,   164,     0,   249,     0,
      20,     0,    91,   117,   139,     0,     0,   114,     0,   254,
     158,   108,   248
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    18,    19,    20,   124,   303,    21,    99,   435,    52,
      22,    23,    45,    24,    70,    98,    25,    65,    43,    47,
      26,    44,    27,    81,    40,    28,    82,    29,    30,   164,
     125,    67,    93,   358,   165,   166,   369,    32,    74,   167,
     106,   283,   255,    75,   291,    76,   187,    77,   126,   127,
     198,   128,   211,   307,   169,   170,   341,   488,   171,   365,
     368,   507,   463,   246,   172,   396,   363,   366,   364,   367,
     343,   344,   260,   259,   478,   417,   515,   244,   245,   337,
     263,   264,   265,   193,    64,   173,   293,   305,   304,    69,
     174,   130,   175,   176,   491,   495,   496,   336,   131,   446,
     429,   132,   423,   424,   183
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -451
static const yytype_int16 yypact[] =
{
    1416,  -451,  -451,  -451,   -31,    -3,    48,    72,  -451,  -451,
       2,  -451,  -451,  -451,    62,  -451,  -451,    74,   139,   845,
    -451,  -451,   140,  -451,  -451,  -451,  -451,  -451,  -451,  -451,
    -451,  -451,   105,  -451,  -451,    79,    83,    39,  -451,  -451,
      61,    96,  -451,  -451,    70,   138,  -451,  -451,  -451,  -451,
    -451,  -451,   131,    -2,   150,   136,   169,  -451,  -451,  -451,
    -451,   126,   -28,   -28,   100,    70,  -451,  -451,   204,    70,
       9,  -451,   -14,  -451,   153,  -451,   152,   197,  -451,  -451,
    -451,   206,   128,  -451,  -451,    63,   -28,   -28,   -28,   -28,
     -28,  -451,  -451,  1036,  -451,  -451,  -451,  1337,  -451,    61,
      97,   213,   214,   150,   255,   247,   165,  -451,    22,    61,
      61,    61,    61,  -451,  -451,  -451,   173,   -19,   128,   128,
     128,   128,   128,   128,   128,  -451,   142,  -451,  -451,  1497,
    -451,   188,  -451,  -451,  -451,   161,   161,  -451,  -451,  -451,
    -451,  1337,    61,    61,    61,  1337,   241,  -451,  -451,   265,
    -451,    61,    61,   200,   201,    61,    61,    61,    61,   253,
      40,  -451,  -451,  1337,  -451,   187,  -451,  -451,   177,   276,
     -24,  -451,  -451,  1666,  -451,   146,  -451,   187,    31,   211,
     191,  -451,  -451,   -26,  -451,   -28,   264,  -451,  1692,   206,
    -451,  -451,  -451,  -451,   253,   128,   128,   128,   216,   128,
     253,   262,  -451,  -451,  -451,  -451,  -451,  -451,   560,  -451,
    -451,   212,   128,   128,   128,   128,   128,   128,   128,   128,
     128,   128,   128,   128,   128,   128,   128,   128,   128,   128,
     128,   128,   128,   128,   128,   128,  -451,  -451,   263,   108,
     128,  -451,  -451,  -451,   299,   265,   265,  -451,   253,  -451,
    -451,   253,   253,   253,   253,  -451,   218,   475,   223,    61,
    1036,   653,   -32,  -451,   -12,   936,  1281,    -8,     1,  -451,
    -451,  -451,  -451,  -451,   253,   128,  1337,  1337,  1337,  1337,
     225,  -451,  -451,   188,  -451,  -451,  -451,  -451,  -451,   210,
     224,   239,  -451,    61,   188,  1638,  1638,  1638,   128,  1586,
    -451,  -451,   128,  -451,   244,   248,   253,  -451,  1768,  1768,
    1791,  1834,  1850,  1850,  1850,  1865,  1879,  1892,   250,   250,
     512,   512,   512,   512,   271,   271,   186,   186,  -451,  -451,
    -451,  -451,  -451,   188,   188,  1527,   188,  1036,  -451,  -451,
     322,   253,   246,  1036,  1036,   188,   188,   188,   188,   253,
    -451,   106,  -451,  -451,  1136,   128,   187,  -451,   260,  -451,
    -451,  -451,  -451,    73,   268,    73,   273,   128,   128,  1136,
     188,  1411,  1814,   296,  1834,  -451,  1718,   296,  1744,  -451,
    -451,  -451,   350,   264,  -451,   128,  -451,  -451,  -451,  -451,
    1612,    66,  1557,    73,    73,  -451,   266,  -451,  -451,   128,
    -451,   187,  -451,  -451,   128,   187,   187,  -451,  -451,  -451,
    -451,  -451,   761,  -451,   188,   269,  -451,    61,    61,  -451,
     318,    73,  -451,   -86,  -451,    73,  -451,    73,  1463,  -451,
    -451,  -451,  -451,  -451,   128,   138,   272,  -451,   188,  -451,
     253,   316,   128,   277,   280,   128,   188,  1692,  -451,  1437,
     279,   282,  -451,  -451,   128,   128,  -451,   188,    73,    73,
     302,   303,   128,   281,  1638,   344,    15,   138,  -451,  -451,
    1638,  -451,  -451,  -451,  -451,   128,  -451,  -451,  1213,   188,
    1638,  -451,  -451,   188,  -451,  -451,   188,  1036,  -451,  -451,
      14,    70,  -451,  -451,  -451,   285,   288,  -451,  -451,  1638,
     104,  -451,  -451,  -451,  -451,  -451,   187,   281,  -451,  1337,
    -451,    15,  -451,  -451,   292,  1213,   290,  -451,   188,  -451,
    -451,  -451,  -451
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -451,  -451,  -451,   383,   -40,   -54,  -451,  -451,  -451,  -451,
    -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,
    -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,  -451,    36,
    -451,   -63,  -451,  -451,  -230,   141,  -451,  -451,  -451,     5,
    -135,  -451,    55,   -37,    24,  -451,  -451,  -451,   203,  -196,
    -451,    99,  -451,  -451,  -248,  -451,  -451,   -99,  -451,  -451,
    -451,  -451,  -451,  -451,  -450,  -451,  -451,  -451,  -451,  -451,
    -451,  -451,  -451,  -451,  -451,  -451,  -451,     6,  -451,  -451,
    -174,     7,  -451,  -451,   -49,   480,  -451,  -451,  -451,  -393,
     -89,  -451,  -152,  -451,  -451,  -451,  -102,  -451,  -323,  -451,
      43,  -217,  -451,  -330,  -451
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -211
static const yytype_int16 yytable[] =
{
      59,    63,    92,   280,   300,    33,    95,    34,   177,   353,
      96,   262,   274,    84,    85,   508,   492,    78,   331,  -165,
      58,  -165,    63,    63,    33,  -165,    34,   458,   501,    60,
     356,   134,   414,    35,   286,   426,    31,   135,   136,   137,
     138,   139,   465,   282,   278,   279,    63,    63,    63,    63,
      63,   180,   237,   163,   292,    31,   241,   163,    72,   178,
      63,    36,   438,   443,   444,   520,   184,    73,    62,   194,
     195,   196,   197,   493,   497,   133,   494,   236,    58,    11,
      12,    13,   191,  -141,   192,   287,   105,   288,   275,   199,
     418,   457,  -139,   200,   100,   460,   201,   461,   101,  -165,
    -210,   163,   238,   239,   240,   163,   413,   401,    37,  -208,
      41,   247,   248,   405,   406,   251,   252,   253,   254,    97,
      58,   432,    42,   163,   373,   375,   377,   379,   482,   483,
     419,   479,    38,   116,    46,    39,   289,   107,   -79,    48,
     108,   109,   110,    55,   111,    63,   112,    56,   -98,    57,
     430,   430,   257,    60,    60,   258,    61,   179,    86,    87,
      88,    89,    90,    53,   353,   333,    54,    58,   116,   420,
     133,   113,   114,   266,   267,   514,   269,   362,   440,    58,
      66,   441,   415,   105,   281,   115,    50,    51,   116,    68,
     117,    71,    62,    62,   105,    86,    87,    88,    89,    90,
      79,   118,    58,    58,   271,   272,   119,   120,   357,    91,
      72,   121,   209,   210,   -98,     8,     9,   163,   412,   355,
     163,   258,   278,   279,   122,   163,   163,   448,   473,   381,
     123,   450,   451,    80,    58,    83,   163,   163,   163,   163,
     386,   387,   388,   389,   468,   486,   266,   267,   268,   269,
     270,   339,   340,   385,    11,    12,    13,   506,    88,    89,
      90,    94,   352,   102,   107,   103,   104,   108,   109,   110,
     181,   111,   360,   112,   182,   189,   190,   271,   272,   397,
     398,   -98,   400,   232,   233,   234,    86,    87,    88,    89,
      90,   407,   408,   409,   410,   133,   168,   163,   113,   114,
     285,   242,   243,   163,   163,    86,    87,    88,    89,    90,
     249,   250,   115,   116,   163,   116,   433,   117,   273,   382,
     284,   290,   301,   421,   298,   421,   306,   332,   118,   163,
     338,   349,   516,   119,   120,   354,   380,   383,   121,   224,
     225,   226,   227,   228,   229,   230,   231,   232,   233,   234,
     384,   122,   393,   421,   421,   402,   394,   123,   404,   425,
     452,    58,   256,   185,   427,   186,   230,   231,   232,   233,
     234,   416,   163,   279,   436,   456,   469,   454,   455,   445,
     453,   421,   466,   459,   467,   421,   471,   421,   462,   472,
     476,   487,   474,   477,   484,   485,   490,   294,   511,   512,
    -208,   521,    49,   481,   411,   395,   359,   437,   517,   519,
     489,   431,     0,     0,     0,     0,   498,     0,   421,   421,
     518,     0,     0,     0,     0,   502,   503,     0,   510,   504,
       0,     0,   505,     0,     0,     0,     0,     0,   163,     0,
       0,     0,   334,     0,     0,   513,     0,   163,     0,     0,
     509,   342,     0,     0,   345,   346,   347,   348,     0,     0,
     168,     0,     0,   168,   522,     0,     0,     0,   168,   163,
       0,     0,     0,     0,     0,   163,   140,   370,   141,   142,
     143,     0,     2,     3,   107,     0,     0,   108,   109,   110,
     144,   111,     0,   112,     0,     0,     0,   145,     0,     0,
     146,   147,   148,  -125,  -125,   149,  -125,   150,  -125,   151,
     152,     0,  -125,     0,   153,     0,   154,  -125,   113,   114,
       0,     0,     0,    11,    12,    13,     0,     0,   155,   156,
     157,   158,   115,   -68,   350,   351,   -68,   117,   161,     0,
     168,     0,     0,     0,   403,     0,   168,   168,   118,     0,
       0,     0,   256,   119,   120,     0,     0,   168,   121,     0,
       0,     0,   129,     0,     0,     0,   422,     0,   422,     0,
       0,   122,   168,     0,     0,     0,     0,   123,     0,     0,
       0,    58,     0,     0,   188,   162,  -125,     0,     0,   302,
       0,     0,     0,     0,     0,     0,   422,   422,   202,   203,
     204,   205,   206,   207,   208,   228,   229,   230,   231,   232,
     233,   234,     0,     0,     0,   168,     0,     0,     0,     0,
       0,     0,     0,     0,   422,     0,     0,     0,   422,     0,
     422,     0,     0,     0,   212,   213,   214,   215,     0,     0,
     216,   217,   218,   261,   219,   220,   221,   222,   223,   224,
     225,   226,   227,   228,   229,   230,   231,   232,   233,   234,
       0,   422,   422,     0,     0,     0,     0,   133,     0,     0,
       0,     0,     0,     0,     0,   295,   296,   297,     0,   299,
       0,   500,   302,     0,     0,     0,     0,     0,     0,     0,
     168,     0,   308,   309,   310,   311,   312,   313,   314,   315,
     316,   317,   318,   319,   320,   321,   322,   323,   324,   325,
     326,   327,   328,   329,   330,   129,     0,     0,   500,     0,
     335,     0,     0,     0,     0,     0,     0,   212,   213,   276,
     277,     0,     0,   216,   217,   218,     0,   219,   220,   221,
     222,   223,   224,   225,   226,   227,   228,   229,   230,   231,
     232,   233,   234,     0,     0,   371,   372,   374,   376,   378,
     133,     0,   140,     0,   141,   142,   143,     0,     2,     3,
     107,     0,     0,   108,   109,   110,   144,   111,   390,   112,
       0,     0,   392,   145,     0,     0,   146,   147,   148,  -125,
    -125,   149,  -125,   150,  -125,   151,   152,     0,  -125,     0,
     153,     0,   154,  -125,   113,   114,     0,     0,     0,     0,
       0,     0,     0,     0,   155,   156,   157,   158,   115,     0,
       0,   351,     0,   117,   161,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   118,   129,     0,     0,     0,   119,
     120,     0,     0,     0,   121,    -2,     1,   428,   428,     0,
       0,     0,     2,     3,     0,     4,     5,   122,     0,     0,
       0,     0,     0,   123,     6,   129,     7,    58,     0,     0,
       0,   162,  -125,     8,     9,     0,     0,     0,     0,   447,
       0,     0,     0,     0,   449,     0,     0,     0,     0,     0,
      10,   -23,   -23,    11,    12,    13,     0,     0,     0,     0,
       0,     0,     0,   -68,     0,     0,   -68,     0,     0,     0,
      14,    15,    16,    17,   464,     0,     0,     0,     0,     0,
       0,     0,   470,     0,     0,   129,     0,     0,     0,     0,
       0,     0,     0,     0,   129,   480,     0,   140,     0,   141,
     142,   143,   129,     2,     3,   107,     0,     0,   108,   109,
     110,   144,   111,     0,   112,   499,     0,     0,   145,     0,
       0,   146,   147,   148,     8,     9,   149,     0,   150,     0,
     151,   152,     0,     0,     0,   153,     0,   154,     0,   113,
     114,     0,     0,     0,    11,    12,    13,     0,     0,   155,
     156,   157,   158,   115,   -68,   159,   160,   -68,   117,   161,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   118,
       0,     0,     0,     0,   119,   120,     0,     0,     0,   121,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   122,     0,     0,     0,     0,   140,   123,   141,
     142,   143,    58,     2,     3,   107,   162,     0,   108,   109,
     110,   144,   111,     0,   112,     0,     0,     0,   145,     0,
       0,   146,   147,   148,     0,     0,   149,     0,   150,     0,
     151,   152,     0,     0,     0,   153,     0,   154,     0,   113,
     114,     0,     0,     0,    11,    12,    13,     0,     0,   155,
     156,   157,   158,   115,   -68,   159,   160,   -68,   117,   161,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   118,
       0,     0,     0,     0,   119,   120,     0,     0,     0,   121,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   122,     0,     0,     0,     0,   140,   123,   141,
     142,   143,    58,     2,     3,   107,   162,     0,   108,   109,
     110,   144,   111,     0,   112,     0,     0,     0,   145,     0,
       0,   146,   147,   148,     0,     0,   149,     0,   150,     0,
     151,   152,     0,     0,     0,   153,     0,   154,     0,   113,
     114,     0,     0,     0,     0,     0,     0,     0,     0,   155,
     156,   157,   158,   115,     0,     0,   351,     0,   117,   161,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   118,
       0,     0,     0,     0,   119,   120,   141,   142,   143,   121,
       2,     3,   107,     0,     0,   108,   109,   110,   144,   111,
       0,   112,   122,     0,     0,   145,     0,     0,   123,     0,
     148,     0,    58,     0,     0,     0,   162,     0,     0,     0,
       0,     0,   153,     0,   154,     0,   113,   114,     0,     0,
       0,     0,     0,     0,     0,     0,   155,   156,   157,   158,
     115,     0,     0,   116,     0,   117,   161,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   118,     0,     0,     0,
     107,   119,   120,   108,   109,   110,   121,   111,     0,   112,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   122,
       0,     0,     0,     0,     0,   123,     0,     0,     0,    58,
       0,     0,     0,   162,   113,   114,     0,     0,     0,     0,
       0,     0,     0,     0,   155,   156,   157,   158,   115,     0,
       0,   116,     0,   117,   361,     0,   107,     0,     0,   108,
     109,   110,     0,   111,   118,   112,     0,     0,     0,   119,
     120,     0,     0,     0,   121,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   122,     0,     0,
     113,   114,     0,   123,     0,     0,     0,    58,     0,     0,
     155,   156,   157,   158,   115,     0,     0,   116,     0,   117,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     118,     0,     0,     0,     0,   119,   120,     1,     0,     0,
     121,     0,     0,     2,     3,     0,     4,     5,     0,     0,
       0,     0,     0,   122,     0,     6,     0,     7,     0,   123,
       0,     0,     0,    58,     8,     9,     0,     0,     0,   434,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    10,   -23,   -23,    11,    12,    13,     0,     0,     0,
       0,     0,     0,     0,   -68,   475,     0,   -68,     0,     0,
       0,    14,    15,    16,    17,   212,   213,   214,   215,     0,
       0,   216,   217,   218,     0,   219,   220,   221,   222,   223,
     224,   225,   226,   227,   228,   229,   230,   231,   232,   233,
     234,   212,   213,   214,   215,     0,     0,   216,   217,   218,
       0,   219,   220,   221,   222,   223,   224,   225,   226,   227,
     228,   229,   230,   231,   232,   233,   234,   212,   213,   214,
     215,     0,     0,   216,   217,   218,     0,   219,   220,   221,
     222,   223,   224,   225,   226,   227,   228,   229,   230,   231,
     232,   233,   234,     0,     0,     0,     0,     0,     0,    58,
       0,   212,   213,   214,   215,     0,   235,   216,   217,   218,
       0,   219,   220,   221,   222,   223,   224,   225,   226,   227,
     228,   229,   230,   231,   232,   233,   234,     0,     0,     0,
       0,   212,   213,   214,   215,     0,     0,   216,   217,   218,
     235,   219,   220,   221,   222,   223,   224,   225,   226,   227,
     228,   229,   230,   231,   232,   233,   234,     0,     0,     0,
       0,   212,   213,   214,   215,     0,     0,   216,   217,   218,
     399,   219,   220,   221,   222,   223,   224,   225,   226,   227,
     228,   229,   230,   231,   232,   233,   234,     0,     0,     0,
     212,   213,   214,   215,     0,     0,   216,   217,   218,   442,
     219,   220,   221,   222,   223,   224,   225,   226,   227,   228,
     229,   230,   231,   232,   233,   234,   212,   213,   214,   215,
       0,     0,   216,   217,   218,   391,   219,   220,   221,   222,
     223,   224,   225,   226,   227,   228,   229,   230,   231,   232,
     233,   234,   212,   213,   214,   215,     0,     0,   216,   217,
     218,   439,   219,   220,   221,   222,   223,   224,   225,   226,
     227,   228,   229,   230,   231,   232,   233,   234,     0,     0,
     212,   213,   276,   277,     0,   133,   216,   217,   218,     0,
     219,   220,   221,   222,   223,   224,   225,   226,   227,   228,
     229,   230,   231,   232,   233,   234,   212,   213,   214,   215,
       0,     0,   216,   217,   218,     0,   219,   220,   221,   222,
     223,   224,   225,   226,   227,   228,   229,   230,   231,   232,
     233,   234,   212,   213,     0,   277,     0,     0,   216,   217,
     218,     0,   219,   220,   221,   222,   223,   224,   225,   226,
     227,   228,   229,   230,   231,   232,   233,   234,   212,   213,
       0,     0,     0,     0,   216,   217,   218,     0,   219,   220,
     221,   222,   223,   224,   225,   226,   227,   228,   229,   230,
     231,   232,   233,   234,   214,   215,     0,     0,   216,   217,
     218,     0,   219,   220,   221,   222,   223,   224,   225,   226,
     227,   228,   229,   230,   231,   232,   233,   234,   215,     0,
       0,   216,   217,   218,     0,   219,   220,   221,   222,   223,
     224,   225,   226,   227,   228,   229,   230,   231,   232,   233,
     234,   277,     0,     0,   216,   217,   218,     0,   219,   220,
     221,   222,   223,   224,   225,   226,   227,   228,   229,   230,
     231,   232,   233,   234,   216,   217,   218,     0,   219,   220,
     221,   222,   223,   224,   225,   226,   227,   228,   229,   230,
     231,   232,   233,   234,   219,   220,   221,   222,   223,   224,
     225,   226,   227,   228,   229,   230,   231,   232,   233,   234,
     220,   221,   222,   223,   224,   225,   226,   227,   228,   229,
     230,   231,   232,   233,   234,   221,   222,   223,   224,   225,
     226,   227,   228,   229,   230,   231,   232,   233,   234,   222,
     223,   224,   225,   226,   227,   228,   229,   230,   231,   232,
     233,   234
};

static const yytype_int16 yycheck[] =
{
      40,    41,    65,   177,   200,     0,    69,     0,    97,   257,
       1,   163,    36,    62,    63,     1,     1,    54,   235,    31,
     106,    33,    62,    63,    19,    37,    19,   113,   478,    57,
     260,    85,   355,    64,    60,   365,     0,    86,    87,    88,
      89,    90,   435,   178,    76,    77,    86,    87,    88,    89,
      90,   100,   141,    93,   189,    19,   145,    97,    60,    99,
     100,    64,   385,   393,   394,   515,   103,    69,    96,   109,
     110,   111,   112,    58,   467,   107,    61,   131,   106,    48,
      49,    50,    60,    91,    62,   111,    81,   113,   112,   108,
      17,   421,    91,   112,   108,   425,   115,   427,   112,   111,
     108,   141,   142,   143,   144,   145,   354,   337,    60,   108,
     108,   151,   152,   343,   344,   155,   156,   157,   158,   110,
     106,   369,    60,   163,   276,   277,   278,   279,   458,   459,
      57,   454,    60,    60,    60,    63,   185,     9,   107,     0,
      12,    13,    14,    64,    16,   185,    18,    64,   108,   110,
     367,   368,   112,    57,    57,   115,    60,    60,    95,    96,
      97,    98,    99,    58,   412,    57,    61,   106,    60,    96,
     107,    43,    44,    69,    70,    71,    72,   266,   112,   106,
     110,   115,   356,   178,   177,    57,    46,    47,    60,    51,
      62,    60,    96,    96,   189,    95,    96,    97,    98,    99,
      64,    73,   106,   106,   100,   101,    78,    79,   262,   109,
      60,    83,    70,    71,   108,    28,    29,   257,   112,   259,
     260,   115,    76,    77,    96,   265,   266,   401,   445,   283,
     102,   405,   406,    64,   106,   109,   276,   277,   278,   279,
     294,   295,   296,   297,   440,   462,    69,    70,    71,    72,
      73,   245,   246,   293,    48,    49,    50,   487,    97,    98,
      99,    57,   257,   110,     9,   113,    69,    12,    13,    14,
      57,    16,   265,    18,    60,    28,   111,   100,   101,   333,
     334,   108,   336,    97,    98,    99,    95,    96,    97,    98,
      99,   345,   346,   347,   348,   107,    93,   337,    43,    44,
     109,    60,    37,   343,   344,    95,    96,    97,    98,    99,
     110,   110,    57,    60,   354,    60,   370,    62,    42,   109,
     109,    57,    60,   363,   108,   365,   114,    64,    73,   369,
      31,   113,   506,    78,    79,   112,   111,   113,    83,    89,
      90,    91,    92,    93,    94,    95,    96,    97,    98,    99,
     111,    96,   108,   393,   394,    33,   108,   102,   112,    91,
     414,   106,   159,   108,    91,   110,    95,    96,    97,    98,
      99,   111,   412,    77,    24,    57,    60,   417,   418,   113,
     111,   421,   110,   423,   438,   425,   109,   427,   428,   109,
     111,   110,   446,   111,    92,    92,    52,   194,   113,   111,
     108,   111,    19,   457,   349,   306,   265,   383,   507,   511,
     464,   368,    -1,    -1,    -1,    -1,   470,    -1,   458,   459,
     509,    -1,    -1,    -1,    -1,   479,   480,    -1,   491,   483,
      -1,    -1,   486,    -1,    -1,    -1,    -1,    -1,   478,    -1,
      -1,    -1,   239,    -1,    -1,   499,    -1,   487,    -1,    -1,
     490,   248,    -1,    -1,   251,   252,   253,   254,    -1,    -1,
     257,    -1,    -1,   260,   518,    -1,    -1,    -1,   265,   509,
      -1,    -1,    -1,    -1,    -1,   515,     1,   274,     3,     4,
       5,    -1,     7,     8,     9,    -1,    -1,    12,    13,    14,
      15,    16,    -1,    18,    -1,    -1,    -1,    22,    -1,    -1,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    -1,    37,    -1,    39,    -1,    41,    42,    43,    44,
      -1,    -1,    -1,    48,    49,    50,    -1,    -1,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    -1,
     337,    -1,    -1,    -1,   341,    -1,   343,   344,    73,    -1,
      -1,    -1,   349,    78,    79,    -1,    -1,   354,    83,    -1,
      -1,    -1,    82,    -1,    -1,    -1,   363,    -1,   365,    -1,
      -1,    96,   369,    -1,    -1,    -1,    -1,   102,    -1,    -1,
      -1,   106,    -1,    -1,   104,   110,   111,    -1,    -1,    29,
      -1,    -1,    -1,    -1,    -1,    -1,   393,   394,   118,   119,
     120,   121,   122,   123,   124,    93,    94,    95,    96,    97,
      98,    99,    -1,    -1,    -1,   412,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   421,    -1,    -1,    -1,   425,    -1,
     427,    -1,    -1,    -1,    74,    75,    76,    77,    -1,    -1,
      80,    81,    82,   163,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,    96,    97,    98,    99,
      -1,   458,   459,    -1,    -1,    -1,    -1,   107,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   195,   196,   197,    -1,   199,
      -1,   478,    29,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     487,    -1,   212,   213,   214,   215,   216,   217,   218,   219,
     220,   221,   222,   223,   224,   225,   226,   227,   228,   229,
     230,   231,   232,   233,   234,   235,    -1,    -1,   515,    -1,
     240,    -1,    -1,    -1,    -1,    -1,    -1,    74,    75,    76,
      77,    -1,    -1,    80,    81,    82,    -1,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    93,    94,    95,    96,
      97,    98,    99,    -1,    -1,   275,   276,   277,   278,   279,
     107,    -1,     1,    -1,     3,     4,     5,    -1,     7,     8,
       9,    -1,    -1,    12,    13,    14,    15,    16,   298,    18,
      -1,    -1,   302,    22,    -1,    -1,    25,    26,    27,    28,
      29,    30,    31,    32,    33,    34,    35,    -1,    37,    -1,
      39,    -1,    41,    42,    43,    44,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    53,    54,    55,    56,    57,    -1,
      -1,    60,    -1,    62,    63,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    73,   355,    -1,    -1,    -1,    78,
      79,    -1,    -1,    -1,    83,     0,     1,   367,   368,    -1,
      -1,    -1,     7,     8,    -1,    10,    11,    96,    -1,    -1,
      -1,    -1,    -1,   102,    19,   385,    21,   106,    -1,    -1,
      -1,   110,   111,    28,    29,    -1,    -1,    -1,    -1,   399,
      -1,    -1,    -1,    -1,   404,    -1,    -1,    -1,    -1,    -1,
      45,    46,    47,    48,    49,    50,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    58,    -1,    -1,    61,    -1,    -1,    -1,
      65,    66,    67,    68,   434,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   442,    -1,    -1,   445,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   454,   455,    -1,     1,    -1,     3,
       4,     5,   462,     7,     8,     9,    -1,    -1,    12,    13,
      14,    15,    16,    -1,    18,   475,    -1,    -1,    22,    -1,
      -1,    25,    26,    27,    28,    29,    30,    -1,    32,    -1,
      34,    35,    -1,    -1,    -1,    39,    -1,    41,    -1,    43,
      44,    -1,    -1,    -1,    48,    49,    50,    -1,    -1,    53,
      54,    55,    56,    57,    58,    59,    60,    61,    62,    63,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    73,
      -1,    -1,    -1,    -1,    78,    79,    -1,    -1,    -1,    83,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    96,    -1,    -1,    -1,    -1,     1,   102,     3,
       4,     5,   106,     7,     8,     9,   110,    -1,    12,    13,
      14,    15,    16,    -1,    18,    -1,    -1,    -1,    22,    -1,
      -1,    25,    26,    27,    -1,    -1,    30,    -1,    32,    -1,
      34,    35,    -1,    -1,    -1,    39,    -1,    41,    -1,    43,
      44,    -1,    -1,    -1,    48,    49,    50,    -1,    -1,    53,
      54,    55,    56,    57,    58,    59,    60,    61,    62,    63,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    73,
      -1,    -1,    -1,    -1,    78,    79,    -1,    -1,    -1,    83,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    96,    -1,    -1,    -1,    -1,     1,   102,     3,
       4,     5,   106,     7,     8,     9,   110,    -1,    12,    13,
      14,    15,    16,    -1,    18,    -1,    -1,    -1,    22,    -1,
      -1,    25,    26,    27,    -1,    -1,    30,    -1,    32,    -1,
      34,    35,    -1,    -1,    -1,    39,    -1,    41,    -1,    43,
      44,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    53,
      54,    55,    56,    57,    -1,    -1,    60,    -1,    62,    63,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    73,
      -1,    -1,    -1,    -1,    78,    79,     3,     4,     5,    83,
       7,     8,     9,    -1,    -1,    12,    13,    14,    15,    16,
      -1,    18,    96,    -1,    -1,    22,    -1,    -1,   102,    -1,
      27,    -1,   106,    -1,    -1,    -1,   110,    -1,    -1,    -1,
      -1,    -1,    39,    -1,    41,    -1,    43,    44,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    53,    54,    55,    56,
      57,    -1,    -1,    60,    -1,    62,    63,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    73,    -1,    -1,    -1,
       9,    78,    79,    12,    13,    14,    83,    16,    -1,    18,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    96,
      -1,    -1,    -1,    -1,    -1,   102,    -1,    -1,    -1,   106,
      -1,    -1,    -1,   110,    43,    44,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    53,    54,    55,    56,    57,    -1,
      -1,    60,    -1,    62,    63,    -1,     9,    -1,    -1,    12,
      13,    14,    -1,    16,    73,    18,    -1,    -1,    -1,    78,
      79,    -1,    -1,    -1,    83,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    96,    -1,    -1,
      43,    44,    -1,   102,    -1,    -1,    -1,   106,    -1,    -1,
      53,    54,    55,    56,    57,    -1,    -1,    60,    -1,    62,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      73,    -1,    -1,    -1,    -1,    78,    79,     1,    -1,    -1,
      83,    -1,    -1,     7,     8,    -1,    10,    11,    -1,    -1,
      -1,    -1,    -1,    96,    -1,    19,    -1,    21,    -1,   102,
      -1,    -1,    -1,   106,    28,    29,    -1,    -1,    -1,    38,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    45,    46,    47,    48,    49,    50,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    58,    38,    -1,    61,    -1,    -1,
      -1,    65,    66,    67,    68,    74,    75,    76,    77,    -1,
      -1,    80,    81,    82,    -1,    84,    85,    86,    87,    88,
      89,    90,    91,    92,    93,    94,    95,    96,    97,    98,
      99,    74,    75,    76,    77,    -1,    -1,    80,    81,    82,
      -1,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      93,    94,    95,    96,    97,    98,    99,    74,    75,    76,
      77,    -1,    -1,    80,    81,    82,    -1,    84,    85,    86,
      87,    88,    89,    90,    91,    92,    93,    94,    95,    96,
      97,    98,    99,    -1,    -1,    -1,    -1,    -1,    -1,   106,
      -1,    74,    75,    76,    77,    -1,   113,    80,    81,    82,
      -1,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      93,    94,    95,    96,    97,    98,    99,    -1,    -1,    -1,
      -1,    74,    75,    76,    77,    -1,    -1,    80,    81,    82,
     113,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      93,    94,    95,    96,    97,    98,    99,    -1,    -1,    -1,
      -1,    74,    75,    76,    77,    -1,    -1,    80,    81,    82,
     113,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      93,    94,    95,    96,    97,    98,    99,    -1,    -1,    -1,
      74,    75,    76,    77,    -1,    -1,    80,    81,    82,   112,
      84,    85,    86,    87,    88,    89,    90,    91,    92,    93,
      94,    95,    96,    97,    98,    99,    74,    75,    76,    77,
      -1,    -1,    80,    81,    82,   109,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    93,    94,    95,    96,    97,
      98,    99,    74,    75,    76,    77,    -1,    -1,    80,    81,
      82,   109,    84,    85,    86,    87,    88,    89,    90,    91,
      92,    93,    94,    95,    96,    97,    98,    99,    -1,    -1,
      74,    75,    76,    77,    -1,   107,    80,    81,    82,    -1,
      84,    85,    86,    87,    88,    89,    90,    91,    92,    93,
      94,    95,    96,    97,    98,    99,    74,    75,    76,    77,
      -1,    -1,    80,    81,    82,    -1,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    93,    94,    95,    96,    97,
      98,    99,    74,    75,    -1,    77,    -1,    -1,    80,    81,
      82,    -1,    84,    85,    86,    87,    88,    89,    90,    91,
      92,    93,    94,    95,    96,    97,    98,    99,    74,    75,
      -1,    -1,    -1,    -1,    80,    81,    82,    -1,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    94,    95,
      96,    97,    98,    99,    76,    77,    -1,    -1,    80,    81,
      82,    -1,    84,    85,    86,    87,    88,    89,    90,    91,
      92,    93,    94,    95,    96,    97,    98,    99,    77,    -1,
      -1,    80,    81,    82,    -1,    84,    85,    86,    87,    88,
      89,    90,    91,    92,    93,    94,    95,    96,    97,    98,
      99,    77,    -1,    -1,    80,    81,    82,    -1,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    94,    95,
      96,    97,    98,    99,    80,    81,    82,    -1,    84,    85,
      86,    87,    88,    89,    90,    91,    92,    93,    94,    95,
      96,    97,    98,    99,    84,    85,    86,    87,    88,    89,
      90,    91,    92,    93,    94,    95,    96,    97,    98,    99,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,    86,    87,    88,    89,    90,
      91,    92,    93,    94,    95,    96,    97,    98,    99,    87,
      88,    89,    90,    91,    92,    93,    94,    95,    96,    97,
      98,    99
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     1,     7,     8,    10,    11,    19,    21,    28,    29,
      45,    48,    49,    50,    65,    66,    67,    68,   117,   118,
     119,   122,   126,   127,   129,   132,   136,   138,   141,   143,
     144,   145,   153,   155,   197,    64,    64,    60,    60,    63,
     140,   108,    60,   134,   137,   128,    60,   135,     0,   119,
      46,    47,   125,    58,    61,    64,    64,   110,   106,   120,
      57,    60,    96,   120,   200,   133,   110,   147,    51,   205,
     130,    60,    60,    69,   154,   159,   161,   163,   159,    64,
      64,   139,   142,   109,   200,   200,    95,    96,    97,    98,
      99,   109,   147,   148,    57,   147,     1,   110,   131,   123,
     108,   112,   110,   113,    69,   155,   156,     9,    12,    13,
      14,    16,    18,    43,    44,    57,    60,    62,    73,    78,
      79,    83,    96,   102,   120,   146,   164,   165,   167,   201,
     207,   214,   217,   107,   121,   200,   200,   200,   200,   200,
       1,     3,     4,     5,    15,    22,    25,    26,    27,    30,
      32,    34,    35,    39,    41,    53,    54,    55,    56,    59,
      60,    63,   110,   120,   145,   150,   151,   155,   164,   170,
     171,   174,   180,   201,   206,   208,   209,   206,   120,    60,
     200,    57,    60,   220,   159,   108,   110,   162,   201,    28,
     111,    60,    62,   199,   120,   120,   120,   120,   166,   108,
     112,   115,   201,   201,   201,   201,   201,   201,   201,    70,
      71,   168,    74,    75,    76,    77,    80,    81,    82,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   113,   121,   206,   120,   120,
     120,   206,    60,    37,   193,   194,   179,   120,   120,   110,
     110,   120,   120,   120,   120,   158,   164,   112,   115,   189,
     188,   201,   208,   196,   197,   198,    69,    70,    71,    72,
      73,   100,   101,    42,    36,   112,    76,    77,    76,    77,
     196,   197,   156,   157,   109,   109,    60,   111,   113,   200,
      57,   160,   156,   202,   164,   201,   201,   201,   108,   201,
     165,    60,    29,   121,   204,   203,   114,   169,   201,   201,
     201,   201,   201,   201,   201,   201,   201,   201,   201,   201,
     201,   201,   201,   201,   201,   201,   201,   201,   201,   201,
     201,   217,    64,    57,   164,   201,   213,   195,    31,   193,
     193,   172,   164,   186,   187,   164,   164,   164,   164,   113,
      59,    60,   155,   170,   112,   120,   150,   121,   149,   151,
     197,    63,   206,   182,   184,   175,   183,   185,   176,   152,
     164,   201,   201,   208,   201,   208,   201,   208,   201,   208,
     111,   121,   109,   113,   111,   120,   121,   121,   121,   121,
     201,   109,   201,   108,   108,   167,   181,   121,   121,   113,
     121,   150,    33,   164,   112,   150,   150,   121,   121,   121,
     121,   158,   112,   170,   214,   196,   111,   191,    17,    57,
      96,   120,   164,   218,   219,    91,   219,    91,   201,   216,
     217,   216,   170,   121,    38,   124,    24,   160,   214,   109,
     112,   115,   112,   219,   219,   113,   215,   201,   196,   201,
     196,   196,   121,   111,   120,   120,    57,   219,   113,   120,
     219,   219,   120,   178,   201,   205,   110,   121,   165,    60,
     201,   109,   109,   217,   121,    38,   111,   111,   190,   214,
     201,   121,   219,   219,    92,    92,   217,   110,   173,   121,
      52,   210,     1,    58,    61,   211,   212,   205,   121,   201,
     164,   180,   121,   121,   121,   121,   150,   177,     1,   120,
     147,   113,   111,   121,    71,   192,   196,   173,   206,   212,
     180,   111,   121
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
	      (Loc).first_line, (Loc).first_column,	\
	      (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)
#else
static void
yy_stack_print (bottom, top)
    yytype_int16 *bottom;
    yytype_int16 *top;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    YYFPRINTF (stderr, " %d", *bottom);
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      fprintf (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
      char *yyfmt;
      char const *yyf;
      static char const yyunexpected[] = "syntax error, unexpected %s";
      static char const yyexpecting[] = ", expecting %s";
      static char const yyor[] = " or %s";
      char yyformat[sizeof yyunexpected
		    + sizeof yyexpecting - 1
		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
		       * (sizeof yyor - 1))];
      char const *yyprefix = yyexpecting;

      /* Start YYX at -YYN if negative to avoid negative indexes in
	 YYCHECK.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;

      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yycount = 1;

      yyarg[0] = yytname[yytype];
      yyfmt = yystpcpy (yyformat, yyunexpected);

      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	  {
	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
	      {
		yycount = 1;
		yysize = yysize0;
		yyformat[sizeof yyunexpected - 1] = '\0';
		break;
	      }
	    yyarg[yycount++] = yytname[yyx];
	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
	    {
	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		{
		  yyp += yytnamerr (yyp, yyarg[yyi++]);
		  yyf += 2;
		}
	      else
		{
		  yyp++;
		  yyf++;
		}
	    }
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}


/* Prevent warnings from -Wmissing-prototypes.  */

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */



/* The look-ahead symbol.  */
int yychar;

/* The semantic value of the look-ahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;



/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{
  
  int yystate;
  int yyn;
  int yyresult;
  /* Number of tokens to shift before error messages enabled.  */
  int yyerrstatus;
  /* Look-ahead token as an internal (translated) token number.  */
  int yytoken = 0;
#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

  /* Three stacks and their tools:
     `yyss': related to states,
     `yyvs': related to semantic values,
     `yyls': related to locations.

     Refer to the stacks thru separate pointers, to allow yyoverflow
     to reallocate them elsewhere.  */

  /* The state stack.  */
  yytype_int16 yyssa[YYINITDEPTH];
  yytype_int16 *yyss = yyssa;
  yytype_int16 *yyssp;

  /* The semantic value stack.  */
  YYSTYPE yyvsa[YYINITDEPTH];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  YYSIZE_T yystacksize = YYINITDEPTH;

  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;


  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY;		/* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */

  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;


	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),

		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss);
	YYSTACK_RELOCATE (yyvs);

#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;


      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     look-ahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to look-ahead token.  */
  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a look-ahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid look-ahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the look-ahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token unless it is eof.  */
  if (yychar != YYEOF)
    yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 103 "spin.y"
    { yytext[0] = '\0'; }
    break;

  case 16:
#line 123 "spin.y"
    { par_cnt++; }
    break;

  case 17:
#line 126 "spin.y"
    { par_cnt--; }
    break;

  case 18:
#line 131 "spin.y"
    { 
			  setptype((yyvsp[(3) - (3)]), PROCTYPE, ZN);
			  setpname((yyvsp[(3) - (3)]));
			  context = (yyvsp[(3) - (3)])->sym;
			  context->ini = (yyvsp[(2) - (3)]); /* linenr and file */
			  Expand_Ok++; /* expand struct names in decl */
			  has_ini = 0;
			}
    break;

  case 19:
#line 139 "spin.y"
    { Expand_Ok--;
			  if (has_ini)
			  fatal("initializer in parameter list", (char *) 0);
			}
    break;

  case 20:
#line 145 "spin.y"
    { ProcList *rl;
			  if ((yyvsp[(1) - (11)]) != ZN && (yyvsp[(1) - (11)])->val > 0)
			  {	int j;
				rl = ready((yyvsp[(3) - (11)])->sym, (yyvsp[(6) - (11)]), (yyvsp[(11) - (11)])->sq, (yyvsp[(2) - (11)])->val, (yyvsp[(10) - (11)]), A_PROC);
			  	for (j = 0; j < (yyvsp[(1) - (11)])->val; j++)
				{	runnable(rl, (yyvsp[(9) - (11)])?(yyvsp[(9) - (11)])->val:1, 1);
				announce(":root:");
				}
				if (dumptab) (yyvsp[(3) - (11)])->sym->ini = (yyvsp[(1) - (11)]);
			  } else
			  {	rl = ready((yyvsp[(3) - (11)])->sym, (yyvsp[(6) - (11)]), (yyvsp[(11) - (11)])->sq, (yyvsp[(2) - (11)])->val, (yyvsp[(10) - (11)]), P_PROC);
			  }
			  if (rl && has_ini == 1)	/* global initializations, unsafe */
			  {	/* printf("proctype %s has initialized data\n",
					$3->sym->name);
				 */
				rl->unsafe = 1;
			  }
			  context = ZS;
			}
    break;

  case 21:
#line 167 "spin.y"
    { (yyval) = nn(ZN,CONST,ZN,ZN); (yyval)->val = 0; }
    break;

  case 22:
#line 168 "spin.y"
    { (yyval) = nn(ZN,CONST,ZN,ZN); (yyval)->val = 1; }
    break;

  case 23:
#line 171 "spin.y"
    { (yyval) = ZN; }
    break;

  case 24:
#line 172 "spin.y"
    { (yyval) = nn(ZN,CONST,ZN,ZN); (yyval)->val = 1; }
    break;

  case 25:
#line 173 "spin.y"
    {
			  (yyval) = nn(ZN,CONST,ZN,ZN); (yyval)->val = (yyvsp[(3) - (4)])->val;
			  if ((yyvsp[(3) - (4)])->val > 255)
				non_fatal("max nr of processes is 255\n", "");
			}
    break;

  case 26:
#line 178 "spin.y"
    {
			  (yyval) = nn(ZN,CONST,ZN,ZN);
			  (yyval)->val = 0;
			  if (!(yyvsp[(3) - (4)])->sym->type)
				fatal("undeclared variable %s",
					(yyvsp[(3) - (4)])->sym->name);
			  else if ((yyvsp[(3) - (4)])->sym->ini->ntyp != CONST)
				fatal("need constant initializer for %s\n",
					(yyvsp[(3) - (4)])->sym->name);
			  else
				(yyval)->val = (yyvsp[(3) - (4)])->sym->ini->val;
			}
    break;

  case 27:
#line 192 "spin.y"
    { context = (yyvsp[(1) - (1)])->sym; }
    break;

  case 28:
#line 194 "spin.y"
    { ProcList *rl;
			  rl = ready(context, ZN, (yyvsp[(4) - (4)])->sq, 0, ZN, I_PROC);
			  runnable(rl, (yyvsp[(3) - (4)])?(yyvsp[(3) - (4)])->val:1, 1);
			  announce(":root:");
			  context = ZS;
        		}
    break;

  case 29:
#line 202 "spin.y"
    { ltl_mode = 1; ltl_name = (yyvsp[(2) - (2)])->sym->name; }
    break;

  case 30:
#line 203 "spin.y"
    { if ((yyvsp[(4) - (4)])) ltl_list((yyvsp[(2) - (4)])->sym->name, (yyvsp[(4) - (4)])->sym->name);
			  ltl_mode = 0; has_ltl = 1;
			}
    break;

  case 31:
#line 208 "spin.y"
    { (yyval) = ltl_to_string((yyvsp[(2) - (4)])); }
    break;

  case 32:
#line 209 "spin.y"
    { (yyval) = NULL; }
    break;

  case 33:
#line 212 "spin.y"
    { if ((yyvsp[(2) - (2)]) != ZN)
			  {	(yyvsp[(1) - (2)])->sym = (yyvsp[(2) - (2)])->sym;	/* new 5.3.0 */
			  }
			  nclaims++;
			  context = (yyvsp[(1) - (2)])->sym;
			  if (claimproc && !strcmp(claimproc, (yyvsp[(1) - (2)])->sym->name))
			  {	fatal("claim %s redefined", claimproc);
			  }
			  claimproc = (yyvsp[(1) - (2)])->sym->name;
			}
    break;

  case 34:
#line 222 "spin.y"
    { (void) ready((yyvsp[(1) - (4)])->sym, ZN, (yyvsp[(4) - (4)])->sq, 0, ZN, N_CLAIM);
        		  context = ZS;
        		}
    break;

  case 35:
#line 227 "spin.y"
    { char tb[32];
			  memset(tb, 0, 32);
			  sprintf(tb, "never_%d", nclaims);
			  (yyval) = nn(ZN, NAME, ZN, ZN);
			  (yyval)->sym = lookup(tb);
			}
    break;

  case 36:
#line 233 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 37:
#line 236 "spin.y"
    { char tb[32]; static int nltl = 0;
			  memset(tb, 0, 32);
			  sprintf(tb, "ltl_%d", nltl++);
			  (yyval) = nn(ZN, NAME, ZN, ZN);
			  (yyval)->sym = lookup(tb);
			}
    break;

  case 38:
#line 242 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 39:
#line 245 "spin.y"
    { context = (yyvsp[(1) - (1)])->sym;
			  if (eventmap)
				non_fatal("trace %s redefined", eventmap);
			  eventmap = (yyvsp[(1) - (1)])->sym->name;
			  inEventMap++;
			}
    break;

  case 40:
#line 251 "spin.y"
    {
			  if (strcmp((yyvsp[(1) - (3)])->sym->name, ":trace:") == 0)
			  {	(void) ready((yyvsp[(1) - (3)])->sym, ZN, (yyvsp[(3) - (3)])->sq, 0, ZN, E_TRACE);
			  } else
			  {	(void) ready((yyvsp[(1) - (3)])->sym, ZN, (yyvsp[(3) - (3)])->sq, 0, ZN, N_TRACE);
			  }
        		  context = ZS;
			  inEventMap--;
			}
    break;

  case 41:
#line 262 "spin.y"
    {  if (context)
				   { fatal("typedef %s must be global",
					(yyvsp[(2) - (3)])->sym->name);
				   }
				   owner = (yyvsp[(2) - (3)])->sym;
				   in_seq = (yyvsp[(1) - (3)])->ln;
				}
    break;

  case 42:
#line 269 "spin.y"
    { setuname((yyvsp[(5) - (6)]));
				  owner = ZS;
				  in_seq = 0;
				}
    break;

  case 43:
#line 275 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 44:
#line 276 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]);
				  if (IArgs)
				  fatal("invalid use of '%s'", (yyvsp[(1) - (1)])->sym->name);
				}
    break;

  case 45:
#line 282 "spin.y"
    { NamesNotAdded++; }
    break;

  case 46:
#line 283 "spin.y"
    { prep_inline((yyvsp[(2) - (6)])->sym, (yyvsp[(5) - (6)]));
				  NamesNotAdded--;
				}
    break;

  case 47:
#line 288 "spin.y"
    { /* leaves pseudo-inlines with sym of
				   * type CODE_FRAG or CODE_DECL in global context
				   */
				}
    break;

  case 49:
#line 295 "spin.y"
    {
				  c_state((yyvsp[(2) - (3)])->sym, (yyvsp[(3) - (3)])->sym, ZS);
				  has_code = has_state = 1;
				}
    break;

  case 50:
#line 299 "spin.y"
    {
				  c_track((yyvsp[(2) - (3)])->sym, (yyvsp[(3) - (3)])->sym, ZS);
				  has_code = has_state = 1;
				}
    break;

  case 51:
#line 303 "spin.y"
    {
				  c_state((yyvsp[(2) - (4)])->sym, (yyvsp[(3) - (4)])->sym, (yyvsp[(4) - (4)])->sym);
				  has_code = has_state = 1;
				}
    break;

  case 52:
#line 307 "spin.y"
    {
				  c_track((yyvsp[(2) - (4)])->sym, (yyvsp[(3) - (4)])->sym, (yyvsp[(4) - (4)])->sym);
				  has_code = has_state = 1;
				}
    break;

  case 53:
#line 313 "spin.y"
    { Symbol *s;
				  NamesNotAdded++;
				  s = prep_inline(ZS, ZN);
				  NamesNotAdded--;
				  (yyval) = nn(ZN, C_CODE, ZN, ZN);
				  (yyval)->sym = s;
				  (yyval)->ln = (yyvsp[(1) - (1)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (1)])->fn;
				  has_code = 1;
				}
    break;

  case 54:
#line 323 "spin.y"
    { Symbol *s;
				  NamesNotAdded++;
				  s = prep_inline(ZS, ZN);
				  NamesNotAdded--;
				  s->type = CODE_DECL;
				  (yyval) = nn(ZN, C_CODE, ZN, ZN);
				  (yyval)->sym = s;
				  (yyval)->ln = (yyvsp[(1) - (1)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (1)])->fn;
				  has_code = 1;
				}
    break;

  case 55:
#line 335 "spin.y"
    { Symbol *s;
				  NamesNotAdded++;
				  s = prep_inline(ZS, ZN);
				  NamesNotAdded--;
				  (yyval) = nn(ZN, C_EXPR, ZN, ZN);
				  (yyval)->sym = s;
				  (yyval)->ln = (yyvsp[(1) - (1)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (1)])->fn;
				  no_side_effects(s->name);
				  has_code = 1;
				}
    break;

  case 56:
#line 348 "spin.y"
    { open_seq(1); in_seq = (yyvsp[(1) - (1)])->ln; }
    break;

  case 57:
#line 349 "spin.y"
    { add_seq(Stop); }
    break;

  case 58:
#line 350 "spin.y"
    { (yyval)->sq = close_seq(0); in_seq = 0;
				  if (scope_level != 0)
				  {	non_fatal("missing '}' ?", 0);
					scope_level = 0;
				  }
				}
    break;

  case 59:
#line 358 "spin.y"
    { if ((yyvsp[(1) - (1)])) add_seq((yyvsp[(1) - (1)])); }
    break;

  case 60:
#line 359 "spin.y"
    { if ((yyvsp[(3) - (3)])) add_seq((yyvsp[(3) - (3)])); }
    break;

  case 61:
#line 362 "spin.y"
    { (yyval) = ZN; }
    break;

  case 62:
#line 363 "spin.y"
    { setxus((yyvsp[(2) - (2)]), (yyvsp[(1) - (2)])->val); (yyval) = ZN; }
    break;

  case 63:
#line 364 "spin.y"
    { fatal("label preceding declaration,", (char *)0); }
    break;

  case 64:
#line 365 "spin.y"
    { fatal("label predecing xr/xs claim,", 0); }
    break;

  case 65:
#line 366 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 66:
#line 367 "spin.y"
    { if ((yyvsp[(1) - (2)])->ntyp == DO) { safe_break(); } }
    break;

  case 67:
#line 368 "spin.y"
    { if ((yyvsp[(1) - (4)])->ntyp == DO) { restore_break(); }
				  (yyval) = do_unless((yyvsp[(1) - (4)]), (yyvsp[(4) - (4)]));
				}
    break;

  case 68:
#line 373 "spin.y"
    { (yyval) = ZN; }
    break;

  case 69:
#line 374 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 70:
#line 375 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 71:
#line 376 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 74:
#line 383 "spin.y"
    { setptype((yyvsp[(3) - (3)]), (yyvsp[(2) - (3)])->val, (yyvsp[(1) - (3)]));
				  (yyval) = (yyvsp[(3) - (3)]);
				}
    break;

  case 75:
#line 386 "spin.y"
    { setutype((yyvsp[(3) - (3)]), (yyvsp[(2) - (3)])->sym, (yyvsp[(1) - (3)]));
				  (yyval) = expand((yyvsp[(3) - (3)]), Expand_Ok);
				}
    break;

  case 76:
#line 389 "spin.y"
    {
				  if ((yyvsp[(2) - (6)])->val != MTYPE)
					fatal("malformed declaration", 0);
				  setmtype((yyvsp[(5) - (6)]));
				  if ((yyvsp[(1) - (6)]))
					non_fatal("cannot %s mtype (ignored)",
						(yyvsp[(1) - (6)])->sym->name);
				  if (context != ZS)
					fatal("mtype declaration must be global", 0);
				}
    break;

  case 77:
#line 401 "spin.y"
    { (yyval) = nn(ZN, ',', (yyvsp[(1) - (1)]), ZN); }
    break;

  case 78:
#line 403 "spin.y"
    { (yyval) = nn(ZN, ',', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 79:
#line 406 "spin.y"
    { (yyval) = ZN; }
    break;

  case 80:
#line 407 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 81:
#line 410 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (1)]), XU, (yyvsp[(1) - (1)]), ZN); }
    break;

  case 82:
#line 411 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (3)]), XU, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 83:
#line 414 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (1)]), TYPE, ZN, ZN); }
    break;

  case 84:
#line 415 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (3)]), TYPE, ZN, (yyvsp[(3) - (3)])); }
    break;

  case 85:
#line 418 "spin.y"
    { (yyvsp[(1) - (1)])->ntyp = CONST; (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 86:
#line 419 "spin.y"
    { (yyvsp[(1) - (3)])->ntyp = CONST; (yyval) = nn((yyvsp[(1) - (3)]), ',', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 87:
#line 422 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]);
				  (yyvsp[(1) - (1)])->sym->ini = nn(ZN,CONST,ZN,ZN);
				  (yyvsp[(1) - (1)])->sym->ini->val = 0;
				  if (!initialization_ok)
				  {	Lextok *zx, *xz;
					zx = nn(ZN, NAME, ZN, ZN);
					zx->sym = (yyvsp[(1) - (1)])->sym;
					xz = nn(zx, ASGN, zx, (yyvsp[(1) - (1)])->sym->ini);
					keep_track_off(xz);
					/* make sure zx doesnt turn out to be a STRUCT later */
					add_seq(xz);
				  }
				}
    break;

  case 88:
#line 435 "spin.y"
    {
				  if (!(yyvsp[(1) - (5)])->sym->isarray)
					fatal("%s must be an array", (yyvsp[(1) - (5)])->sym->name);
				  (yyval) = (yyvsp[(1) - (5)]);
				  (yyvsp[(1) - (5)])->sym->ini = (yyvsp[(4) - (5)]);
				  has_ini = 1;
				  (yyvsp[(1) - (5)])->sym->hidden |= (4|8);	/* conservative */
				  if (!initialization_ok)
				  {	Lextok *zx = nn(ZN, NAME, ZN, ZN);
					zx->sym = (yyvsp[(1) - (5)])->sym;
					add_seq(nn(zx, ASGN, zx, (yyvsp[(4) - (5)])));
				  }
				}
    break;

  case 89:
#line 448 "spin.y"
    { (yyval) = (yyvsp[(1) - (3)]);
				  (yyvsp[(1) - (3)])->sym->ini = (yyvsp[(3) - (3)]);
				  if ((yyvsp[(3) - (3)])->ntyp == CONST
				  || ((yyvsp[(3) - (3)])->ntyp == NAME && (yyvsp[(3) - (3)])->sym->context))
				  {	has_ini = 2; /* local init */
				  } else
				  {	has_ini = 1; /* possibly global */
				  }
				  trackvar((yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]));
				  nochan_manip((yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]), 0);
				  no_internals((yyvsp[(1) - (3)]));
				  if (!initialization_ok)
				  {	Lextok *zx = nn(ZN, NAME, ZN, ZN);
					zx->sym = (yyvsp[(1) - (3)])->sym;
					add_seq(nn(zx, ASGN, zx, (yyvsp[(3) - (3)])));
				  }
				}
    break;

  case 90:
#line 465 "spin.y"
    { (yyvsp[(1) - (3)])->sym->ini = (yyvsp[(3) - (3)]);
				  (yyval) = (yyvsp[(1) - (3)]); has_ini = 1;
				  if (!initialization_ok)
				  {	non_fatal(PART1 "'%s'" PART2, (yyvsp[(1) - (3)])->sym->name);
				  }
				}
    break;

  case 91:
#line 474 "spin.y"
    { if ((yyvsp[(2) - (7)])->val)
					u_async++;
				  else
					u_sync++;
        			  {	int i = cnt_mpars((yyvsp[(6) - (7)]));
					Mpars = max(Mpars, i);
				  }
        			  (yyval) = nn(ZN, CHAN, ZN, (yyvsp[(6) - (7)]));
				  (yyval)->val = (yyvsp[(2) - (7)])->val;
				  (yyval)->ln = (yyvsp[(1) - (7)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (7)])->fn;
        			}
    break;

  case 92:
#line 488 "spin.y"
    { (yyvsp[(1) - (1)])->sym->nel = 1; (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 93:
#line 489 "spin.y"
    { (yyvsp[(1) - (3)])->sym->nbits = (yyvsp[(3) - (3)])->val;
				  if ((yyvsp[(3) - (3)])->val >= 8*sizeof(long))
				  {	non_fatal("width-field %s too large",
						(yyvsp[(1) - (3)])->sym->name);
					(yyvsp[(3) - (3)])->val = 8*sizeof(long)-1;
				  }
				  (yyvsp[(1) - (3)])->sym->nel = 1; (yyval) = (yyvsp[(1) - (3)]);
				}
    break;

  case 94:
#line 497 "spin.y"
    { (yyvsp[(1) - (4)])->sym->nel = (yyvsp[(3) - (4)])->val; (yyvsp[(1) - (4)])->sym->isarray = 1; (yyval) = (yyvsp[(1) - (4)]); }
    break;

  case 95:
#line 498 "spin.y"
    {	/* make an exception for an initialized scalars */
					(yyval) = nn(ZN, CONST, ZN, ZN);
					fprintf(stderr, "spin: %s:%d, warning: '%s' in array bound ",
						(yyvsp[(1) - (4)])->fn->name, (yyvsp[(1) - (4)])->ln, (yyvsp[(1) - (4)])->sym->name);
					if ((yyvsp[(3) - (4)])->sym->ini->val > 0)
					{	fprintf(stderr, "evaluated as %d\n", (yyvsp[(3) - (4)])->sym->ini->val);
						(yyval)->val = (yyvsp[(3) - (4)])->sym->ini->val;
					} else
					{	fprintf(stderr, "evaluated as 8 by default (to avoid zero)\n");
						(yyval)->val = 8;
					}
					(yyvsp[(1) - (4)])->sym->nel = (yyval)->val;
					(yyvsp[(1) - (4)])->sym->isarray = 1;
					(yyval) = (yyvsp[(1) - (4)]);
				}
    break;

  case 96:
#line 515 "spin.y"
    { (yyval) = mk_explicit((yyvsp[(1) - (1)]), Expand_Ok, NAME); }
    break;

  case 97:
#line 518 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (1)]), NAME, ZN, ZN);
				  if ((yyvsp[(1) - (1)])->sym->isarray && !in_for)
				  {	non_fatal("missing array index for '%s'",
						(yyvsp[(1) - (1)])->sym->name);
				  }
				}
    break;

  case 98:
#line 524 "spin.y"
    { owner = ZS; }
    break;

  case 99:
#line 525 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (5)]), NAME, (yyvsp[(4) - (5)]), ZN); }
    break;

  case 100:
#line 528 "spin.y"
    { Embedded++;
				  if ((yyvsp[(1) - (1)])->sym->type == STRUCT)
					owner = (yyvsp[(1) - (1)])->sym->Snm;
				}
    break;

  case 101:
#line 532 "spin.y"
    { (yyval) = (yyvsp[(1) - (3)]); (yyval)->rgt = (yyvsp[(3) - (3)]);
				  if ((yyvsp[(3) - (3)]) && (yyvsp[(1) - (3)])->sym->type != STRUCT)
					(yyvsp[(1) - (3)])->sym->type = STRUCT;
				  Embedded--;
				  if (!Embedded && !NamesNotAdded
				  &&  !(yyvsp[(1) - (3)])->sym->type)
				   fatal("undeclared variable: %s",
						(yyvsp[(1) - (3)])->sym->name);
				  if ((yyvsp[(3) - (3)])) validref((yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])->lft);
				  owner = ZS;
				}
    break;

  case 102:
#line 545 "spin.y"
    { (yyval) = ZN; }
    break;

  case 103:
#line 546 "spin.y"
    { (yyval) = nn(ZN, '.', (yyvsp[(2) - (2)]), ZN); }
    break;

  case 104:
#line 549 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); initialization_ok = 0; }
    break;

  case 105:
#line 550 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); initialization_ok = 0;
				  if (inEventMap) non_fatal("not an event", (char *)0);
				}
    break;

  case 106:
#line 555 "spin.y"
    { in_for = 1; }
    break;

  case 107:
#line 556 "spin.y"
    { trapwonly((yyvsp[(4) - (4)]) /*, "for" */);
				  pushbreak(); /* moved up */
				  (yyval) = (yyvsp[(4) - (4)]);
				}
    break;

  case 109:
#line 564 "spin.y"
    { Expand_Ok++; }
    break;

  case 110:
#line 565 "spin.y"
    { Expand_Ok--; has_io++;
				  (yyval) = nn((yyvsp[(1) - (4)]),  'r', (yyvsp[(1) - (4)]), (yyvsp[(4) - (4)]));
				  trackchanuse((yyvsp[(4) - (4)]), ZN, 'R');
				}
    break;

  case 111:
#line 569 "spin.y"
    { Expand_Ok++; }
    break;

  case 112:
#line 570 "spin.y"
    { Expand_Ok--; has_io++;
				  (yyval) = nn((yyvsp[(1) - (4)]), 's', (yyvsp[(1) - (4)]), (yyvsp[(4) - (4)]));
				  (yyval)->val=0; trackchanuse((yyvsp[(4) - (4)]), ZN, 'S');
				  any_runs((yyvsp[(4) - (4)]));
				}
    break;

  case 113:
#line 575 "spin.y"
    {
				  for_setup((yyvsp[(1) - (6)]), (yyvsp[(3) - (6)]), (yyvsp[(5) - (6)])); in_for = 0;
				}
    break;

  case 114:
#line 578 "spin.y"
    { (yyval) = for_body((yyvsp[(1) - (8)]), 1);
				}
    break;

  case 115:
#line 580 "spin.y"
    { (yyval) = for_index((yyvsp[(1) - (4)]), (yyvsp[(3) - (4)])); in_for = 0;
				}
    break;

  case 116:
#line 582 "spin.y"
    { (yyval) = for_body((yyvsp[(5) - (6)]), 1);
				}
    break;

  case 117:
#line 584 "spin.y"
    {
				  trapwonly((yyvsp[(3) - (8)]) /*, "select" */);
				  (yyval) = sel_index((yyvsp[(3) - (8)]), (yyvsp[(5) - (8)]), (yyvsp[(7) - (8)]));
				}
    break;

  case 118:
#line 588 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (3)]), IF, ZN, ZN);
        			  (yyval)->sl = (yyvsp[(2) - (3)])->sl;
				  (yyval)->ln = (yyvsp[(1) - (3)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (3)])->fn;
				  prune_opts((yyval));
        			}
    break;

  case 119:
#line 594 "spin.y"
    { pushbreak(); }
    break;

  case 120:
#line 595 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (4)]), DO, ZN, ZN);
        			  (yyval)->sl = (yyvsp[(3) - (4)])->sl;
				  (yyval)->ln = (yyvsp[(1) - (4)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (4)])->fn;
				  prune_opts((yyval));
        			}
    break;

  case 121:
#line 601 "spin.y"
    { (yyval) = nn(ZN, GOTO, ZN, ZN);
				  (yyval)->sym = break_dest();
				}
    break;

  case 122:
#line 604 "spin.y"
    { (yyval) = nn((yyvsp[(2) - (2)]), GOTO, ZN, ZN);
				  if ((yyvsp[(2) - (2)])->sym->type != 0
				  &&  (yyvsp[(2) - (2)])->sym->type != LABEL) {
				  	non_fatal("bad label-name %s",
					(yyvsp[(2) - (2)])->sym->name);
				  }
				  (yyvsp[(2) - (2)])->sym->type = LABEL;
				}
    break;

  case 123:
#line 612 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (3)]), ':',(yyvsp[(3) - (3)]), ZN);
	                          (yyvsp[(3) - (3)])->si_flag = SI;
				  if ((yyvsp[(1) - (3)])->sym->type != 0
				  &&  (yyvsp[(1) - (3)])->sym->type != LABEL) {
				  	non_fatal("bad label-name %s",
					(yyvsp[(1) - (3)])->sym->name);
				  }
				  (yyvsp[(1) - (3)])->sym->type = LABEL;
				}
    break;

  case 124:
#line 621 "spin.y"
    { 
				 (yyval) = nn((yyvsp[(1) - (4)]), ':',(yyvsp[(4) - (4)]), ZN);
				 (yyvsp[(4) - (4)])->si_flag = XSI;
				  if ((yyvsp[(1) - (4)])->sym->type != 0
				  &&  (yyvsp[(1) - (4)])->sym->type != LABEL) {
				  	non_fatal("bad label-name %s",
					(yyvsp[(1) - (4)])->sym->name);
				  }
				  (yyvsp[(1) - (4)])->sym->type = LABEL;
				}
    break;

  case 125:
#line 631 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (2)]), ':',ZN,ZN);
				  if ((yyvsp[(1) - (2)])->sym->type != 0
				  &&  (yyvsp[(1) - (2)])->sym->type != LABEL) {
				  	non_fatal("bad label-name %s",
					(yyvsp[(1) - (2)])->sym->name);
				  }
				  (yyval)->lft = nn(ZN, 'c', nn(ZN,CONST,ZN,ZN), ZN);
				  (yyval)->lft->lft->val = 1; /* skip */
				  (yyvsp[(1) - (2)])->sym->type = LABEL;
				}
    break;

  case 126:
#line 641 "spin.y"
    { (yyval) = nn(ZN, 'c', nn(ZN,CONST,ZN,ZN), ZN);
				  (yyval)->lft->val = 1; /* skip */
				}
    break;

  case 127:
#line 646 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (3)]), ASGN, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]));
				  trackvar((yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]));
				  nochan_manip((yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]), 0);
				  no_internals((yyvsp[(1) - (3)]));
				}
    break;

  case 128:
#line 651 "spin.y"
    { (yyval) = nn(ZN,CONST, ZN, ZN); (yyval)->val = 1;
				  (yyval) = nn(ZN,  '+', (yyvsp[(1) - (2)]), (yyval));
				  (yyval) = nn((yyvsp[(1) - (2)]), ASGN, (yyvsp[(1) - (2)]), (yyval));
				  trackvar((yyvsp[(1) - (2)]), (yyvsp[(1) - (2)]));
				  no_internals((yyvsp[(1) - (2)]));
				  if ((yyvsp[(1) - (2)])->sym->type == CHAN)
				   fatal("arithmetic on chan", (char *)0);
				}
    break;

  case 129:
#line 659 "spin.y"
    { (yyval) = nn(ZN,CONST, ZN, ZN); (yyval)->val = 1;
				  (yyval) = nn(ZN,  '-', (yyvsp[(1) - (2)]), (yyval));
				  (yyval) = nn((yyvsp[(1) - (2)]), ASGN, (yyvsp[(1) - (2)]), (yyval));
				  trackvar((yyvsp[(1) - (2)]), (yyvsp[(1) - (2)]));
				  no_internals((yyvsp[(1) - (2)]));
				  if ((yyvsp[(1) - (2)])->sym->type == CHAN)
				   fatal("arithmetic on chan id's", (char *)0);
				}
    break;

  case 130:
#line 667 "spin.y"
    { (yyval) = nn(ZN, SET_P, (yyvsp[(3) - (4)]), ZN); has_priority++; }
    break;

  case 131:
#line 668 "spin.y"
    { realread = 0; }
    break;

  case 132:
#line 669 "spin.y"
    { (yyval) = nn((yyvsp[(3) - (6)]), PRINT, (yyvsp[(5) - (6)]), ZN); realread = 1; }
    break;

  case 133:
#line 670 "spin.y"
    { (yyval) = nn(ZN, PRINTM, (yyvsp[(3) - (4)]), ZN); }
    break;

  case 134:
#line 671 "spin.y"
    { (yyval) = nn(ZN, PRINTM, (yyvsp[(3) - (4)]), ZN); }
    break;

  case 135:
#line 672 "spin.y"
    { (yyval) = nn(ZN, ASSERT, (yyvsp[(2) - (2)]), ZN); AST_track((yyvsp[(2) - (2)]), 0); }
    break;

  case 136:
#line 673 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 137:
#line 674 "spin.y"
    { Expand_Ok++; }
    break;

  case 138:
#line 675 "spin.y"
    { Expand_Ok--; has_io++;
				  (yyval) = nn((yyvsp[(1) - (4)]),  'r', (yyvsp[(1) - (4)]), (yyvsp[(4) - (4)]));
				  (yyval)->val = has_random = 1;
				  trackchanuse((yyvsp[(4) - (4)]), ZN, 'R');
				}
    break;

  case 139:
#line 680 "spin.y"
    { Expand_Ok++; }
    break;

  case 140:
#line 681 "spin.y"
    { Expand_Ok--; has_io++;
				  (yyval) = nn((yyvsp[(1) - (6)]), 'r', (yyvsp[(1) - (6)]), (yyvsp[(5) - (6)]));
				  (yyval)->val = 2;	/* fifo poll */
				  trackchanuse((yyvsp[(5) - (6)]), ZN, 'R');
				}
    break;

  case 141:
#line 686 "spin.y"
    { Expand_Ok++; }
    break;

  case 142:
#line 687 "spin.y"
    { Expand_Ok--; has_io++;	/* rrcv poll */
				  (yyval) = nn((yyvsp[(1) - (6)]), 'r', (yyvsp[(1) - (6)]), (yyvsp[(5) - (6)]));
				  (yyval)->val = 3; has_random = 1;
				  trackchanuse((yyvsp[(5) - (6)]), ZN, 'R');
				}
    break;

  case 143:
#line 692 "spin.y"
    { Expand_Ok++; }
    break;

  case 144:
#line 693 "spin.y"
    { Expand_Ok--; has_io++;
				  (yyval) = nn((yyvsp[(1) - (4)]), 's', (yyvsp[(1) - (4)]), (yyvsp[(4) - (4)]));
				  (yyval)->val = has_sorted = 1;
				  trackchanuse((yyvsp[(4) - (4)]), ZN, 'S');
				  any_runs((yyvsp[(4) - (4)]));
				}
    break;

  case 145:
#line 699 "spin.y"
    { (yyval) = nn(ZN, 'c', (yyvsp[(1) - (1)]), ZN); count_runs((yyval)); }
    break;

  case 146:
#line 700 "spin.y"
    { (yyval) = nn(ZN,ELSE,ZN,ZN);
				}
    break;

  case 147:
#line 702 "spin.y"
    { open_seq(0); }
    break;

  case 148:
#line 703 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (6)]), ATOMIC, ZN, ZN);
        			  (yyval)->sl = seqlist(close_seq(3), 0);
				  (yyval)->ln = (yyvsp[(1) - (6)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (6)])->fn;
				  make_atomic((yyval)->sl->this, 0);
        			}
    break;

  case 149:
#line 709 "spin.y"
    { open_seq(0);
				  rem_Seq();
				}
    break;

  case 150:
#line 712 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (6)]), D_STEP, ZN, ZN);
        			  (yyval)->sl = seqlist(close_seq(4), 0);
				  (yyval)->ln = (yyvsp[(1) - (6)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (6)])->fn;
        			  make_atomic((yyval)->sl->this, D_ATOM);
				  unrem_Seq();
        			}
    break;

  case 151:
#line 719 "spin.y"
    { open_seq(0); }
    break;

  case 152:
#line 720 "spin.y"
    { (yyval) = nn(ZN, NON_ATOMIC, ZN, ZN);
        			  (yyval)->sl = seqlist(close_seq(5), 0);
				  (yyval)->ln = (yyvsp[(1) - (5)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (5)])->fn;
        			}
    break;

  case 153:
#line 725 "spin.y"
    { IArgs++; }
    break;

  case 154:
#line 726 "spin.y"
    { initialization_ok = 0;
				  pickup_inline((yyvsp[(1) - (5)])->sym, (yyvsp[(4) - (5)]), ZN);
				  IArgs--;
				}
    break;

  case 155:
#line 730 "spin.y"
    { (yyval) = (yyvsp[(7) - (7)]); }
    break;

  case 156:
#line 732 "spin.y"
    { IArgs++; }
    break;

  case 157:
#line 733 "spin.y"
    { initialization_ok = 0;
				  pickup_inline((yyvsp[(3) - (7)])->sym, (yyvsp[(6) - (7)]), (yyvsp[(1) - (7)]));
				  IArgs--;
				}
    break;

  case 158:
#line 737 "spin.y"
    { (yyval) = (yyvsp[(9) - (9)]); }
    break;

  case 159:
#line 738 "spin.y"
    { (yyval) = return_statement((yyvsp[(2) - (2)])); }
    break;

  case 160:
#line 741 "spin.y"
    { (yyval)->sl = seqlist((yyvsp[(1) - (1)])->sq, 0); }
    break;

  case 161:
#line 742 "spin.y"
    { (yyval)->sl = seqlist((yyvsp[(1) - (2)])->sq, (yyvsp[(2) - (2)])->sl); }
    break;

  case 162:
#line 745 "spin.y"
    { open_seq(0); }
    break;

  case 163:
#line 746 "spin.y"
    { (yyval) = nn(ZN,0,ZN,ZN);
				  (yyval)->sq = close_seq(6);
				  (yyval)->ln = (yyvsp[(1) - (4)])->ln;
				  (yyval)->fn = (yyvsp[(1) - (4)])->fn;
				}
    break;

  case 165:
#line 754 "spin.y"
    { /* redundant semi at end of sequence */ }
    break;

  case 168:
#line 761 "spin.y"
    { /* at least one semi-colon */ }
    break;

  case 169:
#line 762 "spin.y"
    { /* but more are okay too   */ }
    break;

  case 170:
#line 765 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 171:
#line 766 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 172:
#line 769 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 173:
#line 770 "spin.y"
    { (yyval) = (yyvsp[(2) - (2)]); (yyval)->val = -((yyvsp[(2) - (2)])->val); }
    break;

  case 174:
#line 771 "spin.y"
    { (yyval) = (yyvsp[(2) - (3)]); }
    break;

  case 175:
#line 772 "spin.y"
    { (yyval) = (yyvsp[(1) - (3)]); (yyval)->val = (yyvsp[(1) - (3)])->val + (yyvsp[(3) - (3)])->val; }
    break;

  case 176:
#line 773 "spin.y"
    { (yyval) = (yyvsp[(1) - (3)]); (yyval)->val = (yyvsp[(1) - (3)])->val - (yyvsp[(3) - (3)])->val; }
    break;

  case 177:
#line 774 "spin.y"
    { (yyval) = (yyvsp[(1) - (3)]); (yyval)->val = (yyvsp[(1) - (3)])->val * (yyvsp[(3) - (3)])->val; }
    break;

  case 178:
#line 775 "spin.y"
    { (yyval) = (yyvsp[(1) - (3)]); (yyval)->val = (yyvsp[(1) - (3)])->val / (yyvsp[(3) - (3)])->val; }
    break;

  case 179:
#line 776 "spin.y"
    { (yyval) = (yyvsp[(1) - (3)]); (yyval)->val = (yyvsp[(1) - (3)])->val % (yyvsp[(3) - (3)])->val; }
    break;

  case 180:
#line 779 "spin.y"
    { (yyval) = (yyvsp[(2) - (3)]); }
    break;

  case 181:
#line 780 "spin.y"
    { (yyval) = nn(ZN, '+', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 182:
#line 781 "spin.y"
    { (yyval) = nn(ZN, '-', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 183:
#line 782 "spin.y"
    { (yyval) = nn(ZN, '*', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 184:
#line 783 "spin.y"
    { (yyval) = nn(ZN, '/', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 185:
#line 784 "spin.y"
    { (yyval) = nn(ZN, '%', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 186:
#line 785 "spin.y"
    { (yyval) = nn(ZN, '&', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 187:
#line 786 "spin.y"
    { (yyval) = nn(ZN, '^', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 188:
#line 787 "spin.y"
    { (yyval) = nn(ZN, '|', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 189:
#line 788 "spin.y"
    { (yyval) = nn(ZN,  GT, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 190:
#line 789 "spin.y"
    { (yyval) = nn(ZN,  LT, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 191:
#line 790 "spin.y"
    { (yyval) = nn(ZN,  GE, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 192:
#line 791 "spin.y"
    { (yyval) = nn(ZN,  LE, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 193:
#line 792 "spin.y"
    { (yyval) = nn(ZN,  EQ, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 194:
#line 793 "spin.y"
    { (yyval) = nn(ZN,  NE, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 195:
#line 794 "spin.y"
    { (yyval) = nn(ZN, AND, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 196:
#line 795 "spin.y"
    { (yyval) = nn(ZN,  OR, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 197:
#line 796 "spin.y"
    { (yyval) = nn(ZN, LSHIFT,(yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 198:
#line 797 "spin.y"
    { (yyval) = nn(ZN, RSHIFT,(yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 199:
#line 798 "spin.y"
    { (yyval) = nn(ZN, '~', (yyvsp[(2) - (2)]), ZN); }
    break;

  case 200:
#line 799 "spin.y"
    { (yyval) = nn(ZN, UMIN, (yyvsp[(2) - (2)]), ZN); }
    break;

  case 201:
#line 800 "spin.y"
    { (yyval) = nn(ZN, '!', (yyvsp[(2) - (2)]), ZN); }
    break;

  case 202:
#line 802 "spin.y"
    {
				  (yyval) = nn(ZN,  OR, (yyvsp[(4) - (7)]), (yyvsp[(6) - (7)]));
				  (yyval) = nn(ZN, '?', (yyvsp[(2) - (7)]), (yyval));
				}
    break;

  case 203:
#line 807 "spin.y"
    { Expand_Ok++;
				  if (!context)
				   fatal("used 'run' outside proctype",
					(char *) 0);
				}
    break;

  case 204:
#line 813 "spin.y"
    { Expand_Ok--;
				  (yyval) = nn((yyvsp[(2) - (7)]), RUN, (yyvsp[(5) - (7)]), ZN);
				  (yyval)->val = ((yyvsp[(7) - (7)])) ? (yyvsp[(7) - (7)])->val : 0;
				  trackchanuse((yyvsp[(5) - (7)]), (yyvsp[(2) - (7)]), 'A'); trackrun((yyval));
				}
    break;

  case 205:
#line 818 "spin.y"
    { (yyval) = nn((yyvsp[(3) - (4)]), LEN, (yyvsp[(3) - (4)]), ZN); }
    break;

  case 206:
#line 819 "spin.y"
    { (yyval) = nn(ZN, ENABLED, (yyvsp[(3) - (4)]), ZN); has_enabled++; }
    break;

  case 207:
#line 820 "spin.y"
    { (yyval) = nn(ZN, GET_P, (yyvsp[(3) - (4)]), ZN); has_priority++; }
    break;

  case 208:
#line 821 "spin.y"
    { Expand_Ok++; }
    break;

  case 209:
#line 822 "spin.y"
    { Expand_Ok--; has_io++;
				  (yyval) = nn((yyvsp[(1) - (6)]), 'R', (yyvsp[(1) - (6)]), (yyvsp[(5) - (6)]));
				}
    break;

  case 210:
#line 825 "spin.y"
    { Expand_Ok++; }
    break;

  case 211:
#line 826 "spin.y"
    { Expand_Ok--; has_io++;
				  (yyval) = nn((yyvsp[(1) - (6)]), 'R', (yyvsp[(1) - (6)]), (yyvsp[(5) - (6)]));
				  (yyval)->val = has_random = 1;
				}
    break;

  case 212:
#line 830 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); trapwonly((yyvsp[(1) - (1)]) /*, "varref" */); }
    break;

  case 213:
#line 831 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 214:
#line 832 "spin.y"
    { (yyval) = nn(ZN,CONST,ZN,ZN);
				  (yyval)->ismtyp = (yyvsp[(1) - (1)])->ismtyp;
				  (yyval)->val = (yyvsp[(1) - (1)])->val;
				}
    break;

  case 215:
#line 836 "spin.y"
    { (yyval) = nn(ZN,TIMEOUT, ZN, ZN); }
    break;

  case 216:
#line 837 "spin.y"
    { (yyval) = nn(ZN,NONPROGRESS, ZN, ZN);
				  has_np++;
				}
    break;

  case 217:
#line 840 "spin.y"
    { (yyval) = nn(ZN, PC_VAL, (yyvsp[(3) - (4)]), ZN);
				  has_pcvalue++;
				}
    break;

  case 218:
#line 844 "spin.y"
    { (yyval) = rem_lab((yyvsp[(1) - (6)])->sym, (yyvsp[(3) - (6)]), (yyvsp[(6) - (6)])->sym); }
    break;

  case 219:
#line 846 "spin.y"
    { (yyval) = rem_var((yyvsp[(1) - (6)])->sym, (yyvsp[(3) - (6)]), (yyvsp[(6) - (6)])->sym, (yyvsp[(6) - (6)])->lft); }
    break;

  case 220:
#line 847 "spin.y"
    { (yyval) = rem_lab((yyvsp[(1) - (3)])->sym, ZN, (yyvsp[(3) - (3)])->sym); }
    break;

  case 221:
#line 848 "spin.y"
    { (yyval) = rem_var((yyvsp[(1) - (3)])->sym, ZN, (yyvsp[(3) - (3)])->sym, (yyvsp[(3) - (3)])->lft); }
    break;

  case 222:
#line 849 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); sanity_check((yyvsp[(1) - (1)])); }
    break;

  case 223:
#line 852 "spin.y"
    { (yyval) = ZN; }
    break;

  case 224:
#line 853 "spin.y"
    { (yyval) = (yyvsp[(2) - (2)]); has_priority++; }
    break;

  case 225:
#line 856 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 226:
#line 857 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 227:
#line 860 "spin.y"
    { (yyval) = nn(ZN, UNTIL,   (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 228:
#line 861 "spin.y"
    { (yyval) = nn(ZN, RELEASE, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 229:
#line 862 "spin.y"
    { (yyval) = nn(ZN, ALWAYS, (yyvsp[(1) - (3)]), ZN);
				  (yyval) = nn(ZN, OR, (yyval), nn(ZN, UNTIL, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])));
				}
    break;

  case 230:
#line 865 "spin.y"
    {
				(yyval) = nn(ZN, '!', (yyvsp[(1) - (3)]), ZN);
				(yyval) = nn(ZN, OR,  (yyval), (yyvsp[(3) - (3)]));
				}
    break;

  case 231:
#line 869 "spin.y"
    { (yyval) = nn(ZN, EQUIV,   (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 232:
#line 870 "spin.y"
    { (yyval) = nn(ZN, NEXT,  (yyvsp[(2) - (2)]), ZN); }
    break;

  case 233:
#line 871 "spin.y"
    { (yyval) = nn(ZN, ALWAYS,(yyvsp[(2) - (2)]), ZN); }
    break;

  case 234:
#line 872 "spin.y"
    { (yyval) = nn(ZN, EVENTUALLY, (yyvsp[(2) - (2)]), ZN); }
    break;

  case 235:
#line 876 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 236:
#line 877 "spin.y"
    { (yyval) = (yyvsp[(2) - (3)]); }
    break;

  case 237:
#line 878 "spin.y"
    { (yyval) = nn(ZN, AND, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 238:
#line 879 "spin.y"
    { (yyval) = nn(ZN, AND, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 239:
#line 880 "spin.y"
    { (yyval) = nn(ZN, AND, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 240:
#line 881 "spin.y"
    { (yyval) = nn(ZN,  OR, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 241:
#line 882 "spin.y"
    { (yyval) = nn(ZN,  OR, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 242:
#line 883 "spin.y"
    { (yyval) = nn(ZN,  OR, (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 243:
#line 886 "spin.y"
    { (yyval) = nn((yyvsp[(3) - (4)]),  FULL, (yyvsp[(3) - (4)]), ZN); }
    break;

  case 244:
#line 887 "spin.y"
    { (yyval) = nn((yyvsp[(3) - (4)]), NFULL, (yyvsp[(3) - (4)]), ZN); }
    break;

  case 245:
#line 888 "spin.y"
    { (yyval) = nn((yyvsp[(3) - (4)]), EMPTY, (yyvsp[(3) - (4)]), ZN); }
    break;

  case 246:
#line 889 "spin.y"
    { (yyval) = nn((yyvsp[(3) - (4)]),NEMPTY, (yyvsp[(3) - (4)]), ZN); }
    break;

  case 247:
#line 892 "spin.y"
    { (yyval) = ZN; }
    break;

  case 248:
#line 893 "spin.y"
    { if (!proper_enabler((yyvsp[(3) - (4)])))
				  {	non_fatal("invalid PROVIDED clause",
						(char *)0);
					(yyval) = ZN;
				  } else
					(yyval) = (yyvsp[(3) - (4)]);
				 }
    break;

  case 249:
#line 900 "spin.y"
    { (yyval) = ZN;
				  non_fatal("usage: provided ( ..expr.. )",
					(char *)0);
				}
    break;

  case 250:
#line 906 "spin.y"
    { (yyval)->sym = ZS;
				  (yyval)->val = (yyvsp[(1) - (1)])->val;
				  if ((yyval)->val == UNSIGNED)
				  fatal("unsigned cannot be used as mesg type", 0);
				}
    break;

  case 251:
#line 911 "spin.y"
    { (yyval)->sym = (yyvsp[(1) - (1)])->sym;
				  (yyval)->val = STRUCT;
				}
    break;

  case 253:
#line 917 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (1)]), (yyvsp[(1) - (1)])->val, ZN, ZN); }
    break;

  case 254:
#line 918 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (3)]), (yyvsp[(1) - (3)])->val, ZN, (yyvsp[(3) - (3)])); }
    break;

  case 255:
#line 921 "spin.y"
    { (yyval) = nn(ZN, ',', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)])); }
    break;

  case 256:
#line 924 "spin.y"
    { (yyval) = ZN; }
    break;

  case 257:
#line 925 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 258:
#line 928 "spin.y"
    { (yyval) = ZN; }
    break;

  case 259:
#line 929 "spin.y"
    { (yyval) = (yyvsp[(2) - (2)]); }
    break;

  case 260:
#line 932 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); }
    break;

  case 261:
#line 933 "spin.y"
    { if ((yyvsp[(1) - (4)])->ntyp == ',')
					(yyval) = tail_add((yyvsp[(1) - (4)]), (yyvsp[(3) - (4)]));
				  else
				  	(yyval) = nn(ZN, ',', (yyvsp[(1) - (4)]), (yyvsp[(3) - (4)]));
				}
    break;

  case 262:
#line 940 "spin.y"
    { if ((yyvsp[(1) - (1)])->ntyp == ',')
					(yyval) = (yyvsp[(1) - (1)]);
				  else
				  	(yyval) = nn(ZN, ',', (yyvsp[(1) - (1)]), ZN);
				}
    break;

  case 263:
#line 945 "spin.y"
    { if ((yyvsp[(1) - (3)])->ntyp == ',')
					(yyval) = tail_add((yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]));
				  else
				  	(yyval) = nn(ZN, ',', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]));
				}
    break;

  case 264:
#line 952 "spin.y"
    { (yyval) = (yyvsp[(1) - (1)]); trackvar((yyvsp[(1) - (1)]), (yyvsp[(1) - (1)]));
				  trapwonly((yyvsp[(1) - (1)]) /*, "rarg" */); }
    break;

  case 265:
#line 954 "spin.y"
    { (yyval) = nn(ZN,EVAL,(yyvsp[(3) - (4)]),ZN);
				  trapwonly((yyvsp[(1) - (4)]) /*, "eval rarg" */); }
    break;

  case 266:
#line 956 "spin.y"
    { (yyval) = nn(ZN,CONST,ZN,ZN);
				  (yyval)->ismtyp = (yyvsp[(1) - (1)])->ismtyp;
				  (yyval)->val = (yyvsp[(1) - (1)])->val;
				}
    break;

  case 267:
#line 960 "spin.y"
    { (yyval) = nn(ZN,CONST,ZN,ZN);
				  (yyval)->val = - ((yyvsp[(2) - (2)])->val);
				}
    break;

  case 268:
#line 965 "spin.y"
    { if ((yyvsp[(1) - (1)])->ntyp == ',')
					(yyval) = (yyvsp[(1) - (1)]);
				  else
				  	(yyval) = nn(ZN, ',', (yyvsp[(1) - (1)]), ZN);
				}
    break;

  case 269:
#line 970 "spin.y"
    { if ((yyvsp[(1) - (3)])->ntyp == ',')
					(yyval) = tail_add((yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]));
				  else
				  	(yyval) = nn(ZN, ',', (yyvsp[(1) - (3)]), (yyvsp[(3) - (3)]));
				}
    break;

  case 270:
#line 975 "spin.y"
    { if ((yyvsp[(1) - (4)])->ntyp == ',')
					(yyval) = tail_add((yyvsp[(1) - (4)]), (yyvsp[(3) - (4)]));
				  else
				  	(yyval) = nn(ZN, ',', (yyvsp[(1) - (4)]), (yyvsp[(3) - (4)]));
				}
    break;

  case 271:
#line 980 "spin.y"
    { (yyval) = (yyvsp[(2) - (3)]); }
    break;

  case 272:
#line 983 "spin.y"
    { (yyval) = nn((yyvsp[(1) - (1)]), NAME, ZN, ZN);
				  (yyval) = nn(ZN, ',', (yyval), ZN); }
    break;

  case 273:
#line 985 "spin.y"
    { (yyval) = nn((yyvsp[(2) - (2)]), NAME, ZN, ZN);
				  (yyval) = nn(ZN, ',', (yyval), (yyvsp[(1) - (2)]));
				}
    break;

  case 274:
#line 988 "spin.y"
    { (yyval) = (yyvsp[(1) - (2)]); /* commas optional */ }
    break;


/* Line 1267 of yacc.c.  */
#line 4072 "y.tab.c"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;


  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (yymsg);
	  }
	else
	  {
	    yyerror (YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse look-ahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse look-ahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#ifndef yyoverflow
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEOF && yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}


#line 990 "spin.y"


#define binop(n, sop)	fprintf(fd, "("); recursive(fd, n->lft); \
			fprintf(fd, ") %s (", sop); recursive(fd, n->rgt); \
			fprintf(fd, ")");
#define unop(n, sop)	fprintf(fd, "%s (", sop); recursive(fd, n->lft); \
			fprintf(fd, ")");

static void
recursive(FILE *fd, Lextok *n)
{
	if (n)
	switch (n->ntyp) {
	case NEXT:
		unop(n, "X");
		break;
	case ALWAYS:
		unop(n, "[]");
		break;
	case EVENTUALLY:
		unop(n, "<>");
		break;
	case '!':
		unop(n, "!");
		break;
	case UNTIL:
		binop(n, "U");
		break;
	case WEAK_UNTIL:
		binop(n, "W");
		break;
	case RELEASE: /* see http://en.wikipedia.org/wiki/Linear_temporal_logic */
		binop(n, "V");
		break;
	case OR:
		binop(n, "||");
		break;
	case AND:
		binop(n, "&&");
		break;
	case IMPLIES:
		binop(n, "->");
		break;
	case EQUIV:
		binop(n, "<->");
		break;
	default:
		comment(fd, n, 0);
		break;
	}
}

static Lextok *
ltl_to_string(Lextok *n)
{	Lextok *m = nn(ZN, 0, ZN, ZN);
	char *retval;
	char ltl_formula[2048];
	FILE *tf = fopen(TMP_FILE1, "w+"); /* tmpfile() fails on Windows 7 */

	/* convert the parsed ltl to a string
	   by writing into a file, using existing functions,
	   and then passing it to the existing interface for
	   conversion into a never claim
	  (this means parsing everything twice, which is
	   a little redundant, but adds only miniscule overhead)
	 */

	if (!tf)
	{	fatal("cannot create temporary file", (char *) 0);
	}
	dont_simplify = 1;
	recursive(tf, n);
	dont_simplify = 0;
	(void) fseek(tf, 0L, SEEK_SET);

	memset(ltl_formula, 0, sizeof(ltl_formula));
	retval = fgets(ltl_formula, sizeof(ltl_formula), tf);
	fclose(tf);

	(void) unlink(TMP_FILE1);

	if (!retval)
	{	printf("%p\n", retval);
		fatal("could not translate ltl ltl_formula", 0);
	}

	if (1) printf("ltl %s: %s\n", ltl_name, ltl_formula);

	m->sym = lookup(ltl_formula);

	return m;
}

int
is_temporal(int t)
{
	return (t == EVENTUALLY || t == ALWAYS || t == UNTIL
	     || t == WEAK_UNTIL || t == RELEASE);
}

int
is_boolean(int t)
{
	return (t == AND || t == OR || t == IMPLIES || t == EQUIV);
}

void
sanity_check(Lextok *t)	/* check proper embedding of ltl_expr */
{
	if (!t) return;
	sanity_check(t->lft);
	sanity_check(t->rgt);

	if (t->lft && t->rgt)
	{	if (!is_boolean(t->ntyp)
		&&  (is_temporal(t->lft->ntyp)
		||   is_temporal(t->rgt->ntyp)))
		{	printf("spin: attempt to apply '");
			explain(t->ntyp);
			printf("' to '");
			explain(t->lft->ntyp);
			printf("' and '");
			explain(t->rgt->ntyp);
			printf("'\n");
			non_fatal("missing parentheses after temporal operator", (char *)0);
	}	}
}

void
yyerror(char *fmt, ...)
{
	non_fatal(fmt, (char *) 0);
}

