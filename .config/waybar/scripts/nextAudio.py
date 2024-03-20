#!/bin/python3
import subprocess


def getdevicelist() -> list:
    stdout = subprocess.run('pactl list sinks short', shell=True, text=True, stdout=subprocess.PIPE).stdout
    return list(map(lambda i: i.split()[1], stdout.splitlines()))


def getnext(devicelist: list, current: str) -> str:
    l = len(devicelist)
    for i in range(l):
        if devicelist[i] == current:
            if i == l-1:
                return devicelist[0]
            else:
                return devicelist[i + 1]


if __name__ == '__main__':
    current = subprocess.run('pactl get-default-sink', shell=True, text=True, stdout=subprocess.PIPE).stdout[:-1]
    nextd = getnext(getdevicelist(), current)
    subprocess.run(f"pactl set-default-sink {nextd}", shell=True)
