boot.bin: boot.asm
	nasm -f bin boot.asm -o boot.bin
run:
	qemu-system-x86_64 --nographic boot.bin
burn:
	# NB: Error in of is intentionally made. Carefully replace it with your USB stick device
	sudo dd if=boot.bin of=</dev/sdb> bs=512 count=1
