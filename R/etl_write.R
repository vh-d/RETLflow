#' @importFrom RETL etl_write

#' @export
etl_write.db_node <- function(to, ...) {
  RETL::etl_write(to = to$connection, name = to$name, ...)
}

#' @export
etl_write.accdb_node <- function(to, ...) {
  RETL::etl_write(to = to$connection, name = to$name, ...)
}

#' @export
etl_write.r_node <- function(to, ...) {
  RETL::etl_write(to = to$r_env, name = to$name, ...)
}

#' @export
etl_write.csv_node <- function(to, ...) {
  do.call(
    RETL::etl_write,
    args =
      c(
        to = to$path,
        Rflow:::union.list(
          to$read_args,
          ...
        )
      )
  )
}

