# irqbalance
sed -i 's/0/1/g' feeds/packages/utils/irqbalance/files/irqbalance.config
#luci architecture
sed -i "s,boardinfo.system,'ARMv8 64bit Processor',g" feeds/luci/modules/luci-mod-status/htdocs/luci-static/resources/view/status/include/10_system.js
# Maximum connection
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#irq_optimize
mkdir package/base-files/files/usr/bin
rm package/base-files/files/usr/bin/irq_optimize.sh
cp ../github/files/irq_optimize.sh package/base-files/files/usr/bin/irq_optimize.sh
chmod +x package/base-files/files/usr/bin/irq_optimize.sh
rm package/base-files/files/etc/init.d/irq_optimize
cp ../github/files/irq_optimize package/base-files/files/etc/init.d/irq_optimize
chmod +x package/base-files/files/etc/init.d/irq_optimize