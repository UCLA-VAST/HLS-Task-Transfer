#ifndef __MERLIN_STREAM_H__
#define __MERLIN_STREAM_H__
#define INIT_SIZE 1024

typedef char DataType;
#define NODE_LEN sizeof(NODE)

typedef struct __merlin_stream_node {
  DataType data;
  struct __merlin_stream_node *next;
} NODE;

typedef struct __merlin_stream {
  NODE *head;
  NODE *tail;
  unsigned long buffer_size;
  unsigned long data_size;
  unsigned long curr_read_pos;
  unsigned long curr_write_pos;
  const char *name;
} merlin_stream;

#ifdef __cplusplus
extern "C" {
#endif
void merlin_stream_init(merlin_stream *var, unsigned long buffer_size,
                        const char *tye, unsigned long data_size);
void merlin_stream_init_debug(merlin_stream *var, unsigned long buffer_size,
                              const char *type_name, unsigned long data_size,
                              const char *name);

void merlin_stream_reset(merlin_stream *var);

void merlin_stream_write(merlin_stream *var, void *data_in);

void merlin_stream_read(merlin_stream *var, void *data_out);
#ifdef __cplusplus
}
#endif
#endif
