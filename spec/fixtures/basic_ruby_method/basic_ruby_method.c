/* C extension for basic_ruby_method.
This file in generated by Rubex. Do not change!
*/
#include <ruby.h>
#include <stdint.h>

VALUE __rubex_f_addition (int argc, VALUE* argv, VALUE __rubex_arg_self);
VALUE __rubex_f_addition (int argc, VALUE* argv, VALUE __rubex_arg_self)
{
  int32_t __rubex_arg_a;
  int32_t __rubex_arg_b;
  if (argc != 2)
  {
    rb_raise(rb_eArgError, "Need 2 args, not %d", argc);
  }
  __rubex_arg_a=(int32_t)NUM2INT(argv[0])  ;
  __rubex_arg_b=(int32_t)NUM2INT(argv[1])  ;
  return   INT2NUM(( __rubex_arg_a + __rubex_arg_b ));
}

void Init_basic_ruby_method (void);
void Init_basic_ruby_method (void)
{
  rb_define_method(rb_cObject ,"addition", __rubex_f_addition, -1);
}