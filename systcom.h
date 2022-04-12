#ifndef SYSTCOM_H
#define SYSTCOM_H

#include <QObject>

#include <iostream>
#include <stdexcept>
#include <stdio.h>
#include <string>

class SystCom : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString command READ readCommand WRITE writeCommand)
    Q_PROPERTY(QString result READ readResult)
public:
    explicit SystCom(QObject *parent = 0);

    QString readCommand();
    void writeCommand(QString);

    QString readResult();

    Q_INVOKABLE void execute();
    static QString execute(QString command);

    QString command;
    QString result;
signals:

public slots:
};

#endif // SYSTCOM_H
