#include "systcom.h"

SystCom::SystCom(QObject *parent) : QObject(parent)
{

}

QString SystCom::readCommand()
{
    return command;
}

void SystCom::writeCommand(QString str)
{
    command=str;
}

QString SystCom::readResult()
{
    return result;
}

void SystCom::execute()
{
    char buffer[128];
        std::string result = "";
        FILE* pipe = popen(qPrintable(command), "r");
        if (!pipe) throw std::runtime_error("popen() failed!");
        try {
            while (fgets(buffer, sizeof buffer, pipe) != NULL) {
                result += buffer;
            }
        } catch (...) {
            pclose(pipe);
            throw;
        }
        pclose(pipe);
        this->result=QString::fromStdString(result);
}

QString SystCom::execute(QString command)
{
    char buffer[128];
        std::string result = "";
        FILE* pipe = popen(qPrintable(command), "r");
        if (!pipe) throw std::runtime_error("popen() failed!");
        try {
            while (fgets(buffer, sizeof buffer, pipe) != NULL) {
                result += buffer;
            }
        } catch (...) {
            pclose(pipe);
            throw;
        }
        pclose(pipe);
        return QString::fromStdString(result);
}

