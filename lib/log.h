#ifndef LOG_H
#define LOG_H

#include <QDebug>

#define logInfo() \
    qWarning() << Q_FUNC_INFO

#define logFail() \
    qWarning() << Q_FUNC_INFO

#define logError() \
    qWarning() << Q_FUNC_INFO

#endif //! LOG_H
