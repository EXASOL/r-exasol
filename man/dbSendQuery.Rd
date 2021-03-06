% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EXADBI.R
\name{dbSendQuery}
\alias{dbSendQuery}
\title{Sends an SQL statment to an EXASOL DB, prepares for result fetching.}
\usage{
\S4method{dbSendQuery}{EXAConnection,character}(
  conn,
  statement,
  schema = "",
  profile = TRUE,
  default_fetch_rec = 100,
  ...
)
}
\arguments{
\item{conn}{A valid EXAConnection}

\item{statement}{vector mode character : an SQL statement to be executed in EXASOL db}

\item{schema}{vector mode character : a focus schema. This must have write access for the result
set to be temporarily stored. If the user has only read permission on the schema to be read,
another schema may be entered here, and table identifiers in stmt parameter must be
fully qualified (schema.table).}

\item{profile}{logical, default TRUE : collect profiling information}

\item{...}{additional parameters to be passed on to dbConnect (used to clone the connection to
one without autocommit)}

\item{default_fetch_req}{numeric, default 100 :}
}
\value{
EXAResult object which can be used for fetching rows. It also contains metadata.
}
\description{
Sends an SQL statment to an EXASOL DB, prepares for result fetching.
}
\seealso{
Other EXAConnection related objects: 
\code{\link{EXAConnection-class}},
\code{\link{dbBegin}()},
\code{\link{dbCommit}()},
\code{\link{dbConnect}()},
\code{\link{dbCurrentSchema}()},
\code{\link{dbEnd}()},
\code{\link{dbExistsTable}()},
\code{\link{dbGetQuery}()},
\code{\link{dbListFields}()},
\code{\link{dbListTables}()},
\code{\link{dbReadTable}()},
\code{\link{dbRemoveTable}()},
\code{\link{dbRollback}()},
\code{\link{dbWriteTable}()}

Other DQL functions: 
\code{\link{dbClearResult}()},
\code{\link{dbExistsTable}()},
\code{\link{dbFetch}()},
\code{\link{dbGetQuery}()},
\code{\link{dbListFields}()},
\code{\link{dbListTables}()},
\code{\link{dbReadTable}()}
}
\concept{DQL functions}
\concept{EXAConnection related objects}
